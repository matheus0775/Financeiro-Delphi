unit Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uConexao;

type
  TfrmVenda = class(TForm)
    btnCliente: TButtonedEdit;
    Label1: TLabel;
    ImageList1: TImageList;
    btnVendedor: TButtonedEdit;
    Label2: TLabel;
    edtCliente: TDBEdit;
    edtVendedor: TDBEdit;
    edtLancto: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    edtTotalVenda: TEdit;
    Label6: TLabel;
    btnAdicionarProduto: TBitBtn;
    btnRemoverProduto: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    sqlPadrao: TFDQuery;
    dsPadrao: TDataSource;
    sqlPadraoLANCTO: TIntegerField;
    sqlPadraoCLI_CODIGO: TIntegerField;
    sqlPadraoVENDEDOR_CODIGO: TIntegerField;
    sqlPadraoTOTAL_VENDA: TFMTBCDField;
    sqlPadraoSTATUS: TIntegerField;
    sqlItensVenda: TFDQuery;
    dsItensVenda: TDataSource;
    sqlItensVendaLANCTO: TIntegerField;
    sqlItensVendaLANCTO_ORIGEM: TIntegerField;
    sqlItensVendaPRO_CODIGO: TIntegerField;
    sqlItensVendaVALOR_VENDA: TFMTBCDField;
    sqlItensVendaVALOR_CUSTO: TFMTBCDField;
    sqlItensVendaQUANTIDADE: TIntegerField;
    sqlItensVendaDESCRICAO: TWideStringField;
    sqlItensVendaDESCRICAO_RESUMIDA: TWideStringField;
    sqlItensVendaUNIDADE: TWideStringField;
    sqlItensVendaVALOR_TOTAL: TFMTBCDField;
    sqlItensVendaITEM: TIntegerField;
    procedure btnVendedorChange(Sender: TObject);
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    procedure SalvarVenda();
    procedure PesquisaCliente();
    procedure AtualizarTotalVenda();
  public
    { Public declarations }
  end;


implementation

uses
  Pesquisa.Cliente,
  Model.Cliente,
  Pesquisa.Funcionario,
  Model.Funcionario,
  LancamentoProduto;

{$R *.dfm}

procedure TfrmVenda.AtualizarTotalVenda;
var
  Total: Double;
begin
  Total := 0;
  sqlItensVenda.First;
  while not sqlItensVenda.Eof do
  begin
    Total := Total + sqlItensVenda.FieldByName('ValorTotal').AsFloat;
    sqlItensVenda.Next;
  end;

  edtTotalVenda.Text := FormatFloat('0.00', Total);
end;

procedure TfrmVenda.BitBtn3Click(Sender: TObject);
begin
  SalvarVenda();
end;

procedure TfrmVenda.BitBtn4Click(Sender: TObject);
begin
  ModalResult := MrClose;
end;

procedure TfrmVenda.btnAdicionarProdutoClick(Sender: TObject);
var
  vFormLancamentoProduto: TfrmLancamentoProduto;
  Quantidade, PrecoUnitario, ValorTotal: Double;
  ProximoItemNumero: Integer;
begin
  vFormLancamentoProduto := TfrmLancamentoProduto.Create(Self);
  try
    sqlItensVenda.Last;

    if sqlItensVenda.RecordCount = 0 then
      ProximoItemNumero := 1
    else
      ProximoItemNumero := sqlItensVenda.RecordCount + 1;

    if vFormLancamentoProduto.ShowModal = MrOk then
    begin
      sqlItensVenda.Append;
      sqlItensVenda.FieldByName('ITEM').AsInteger := ProximoItemNumero;
      sqlItensVenda.FieldByName('CODIGO').AsInteger := StrToInt(vFormLancamentoProduto.btnProduto.Text);
      sqlItensVenda.FieldByName('DESCRICAO').AsString := vFormLancamentoProduto.edtPesquisaProduto.Text;
      sqlItensVenda.FieldByName('QUANTIDADE').AsCurrency := StrToCurr(vFormLancamentoProduto.edtQuantidade.Text);
      sqlItensVenda.FieldByName('PRECO_VENDA').AsCurrency := StrToCurr(vFormLancamentoProduto.edtPrecoVenda.Text);
      sqlItensVenda.FieldByName('TOTAL_VENDA').AsCurrency := StrToCurr(vFormLancamentoProduto.edtTotalVenda.Text);
      sqlItensVenda.Post;
      AtualizarTotalVenda();
    end;
  finally
    vFormLancamentoProduto.Free();
  end;
end;

procedure TfrmVenda.btnRemoverProdutoClick(Sender: TObject);
begin
  if not sqlItensVenda.IsEmpty() then
    sqlItensVenda.Delete();
end;

procedure TfrmVenda.btnVendedorChange(Sender: TObject);
var
  vFormFuncionario: TfrmPesquisaFuncionario;
begin
  vFormFuncionario := TfrmPesquisaFuncionario.Create(Self);
  try
    if vFormFuncionario.ShowModal = mrOk then
    begin
      btnVendedor.Text := IntToStr(vFormFuncionario.VendedorSelecionado.Codigo);
      edtVendedor.Text := vFormFuncionario.VendedorSelecionado.Nome;
    end;
  finally
    vFormFuncionario.Free();
  end;
end;

procedure TfrmVenda.PesquisaCliente;
var
  vFormCliente: TfrmPesquisaCliente;
begin
  vFormCliente := TfrmPesquisaCliente.Create(Self);
  try
    if vFormCliente.ShowModal = mrOk then
    begin
      btnCliente.Text := IntToStr(vFormCliente.ClienteSelecionado.Codigo);
      edtCliente.Text := vFormCliente.ClienteSelecionado.Nome;
    end;
  finally
    vFormCliente.Free();
  end;
end;

procedure TfrmVenda.SalvarVenda;
var
  qVenda, qItem: TFDQuery;
  vSequencial, vSequencialItem: Integer;

  function TextoInsertVenda(): string;
  begin
    Result := 'INSERT INTO VENDA (LANCTO, CLI_CODIGO, VENDEDOR_CODIGO, TOTAL_VENDA, STATUS) ' +
              'VALUES (:LANCTO, :CLI_CODIGO, :VENDEDOR_CODIGO, :TOTAL_VENDA, :STATUS)';
  end;

  function TextoInsertItens(): string;
  begin
    Result := 'INSERT INTO VENDA_ITENS (LANCTO, LANCTO_ORIGEM, PRO_CODIGO, VALOR_VENDA, QUANTIDADE, VALOR_TOTAL, ITEM) ' +
              'VALUES (:LANCTO, :LANCTO_ORIGEM, :PRO_CODIGO, :VALOR_VENDA, :QUANTIDADE, :VALOR_TOTAL, :ITEM)';
  end;

begin
  qVenda := TFDQuery.Create(nil);
  try
    qVenda.Connection := sqlPadrao.Connection;
    qVenda.SQL.Text := 'SELECT GEN_ID(GEN_VENDA, 1) AS SEQUENCIAL FROM RDB$DATABASE';
    qVenda.Open;
    vSequencial := qVenda.FieldByName('SEQUENCIAL').AsInteger;
    qVenda.Close;

    qVenda.SQL.Text := TextoInsertVenda();
    qVenda.ParamByName('LANCTO').AsInteger := vSequencial;
    qVenda.ParamByName('CLI_CODIGO').AsInteger := StrToInt(btnCliente.Text);
    qVenda.ParamByName('VENDEDOR_CODIGO').AsInteger := StrToInt(btnVendedor.Text);
    qVenda.ParamByName('STATUS').AsInteger := 1; // Autorizado
    qVenda.ExecSQL;

    // Inserir os itens
    qItem := TFDQuery.Create(nil);
    try
      qItem.Connection := sqlPadrao.Connection;
      qItem.SQL.Text := 'SELECT GEN_ID(GEN_VENDA_ITENS, 1) AS SEQUENCIAL FROM RDB$DATABASE';
      qVenda.Open;
      vSequencialItem := qVenda.FieldByName('SEQUENCIAL').AsInteger;

      sqlItensVenda.First;
      while not sqlItensVenda.Eof do
      begin
        qItem.SQL.Text := TextoInsertItens();

        qItem.ParamByName('LANCTO').AsInteger := vSequencialItem; // pode usar outro sequenciador aqui se necessário
        qItem.ParamByName('LANCTO_ORIGEM').AsInteger := vSequencial;
        qItem.ParamByName('PRO_CODIGO').AsInteger := sqlItensVenda.FieldByName('PRO_CODIGO').AsInteger;
        qItem.ParamByName('VALOR_VENDA').AsFloat := sqlItensVenda.FieldByName('VALOR_VENDA').AsFloat;
        qItem.ParamByName('QUANTIDADE').AsFloat := sqlItensVenda.FieldByName('QUANTIDADE').AsFloat;
        qItem.ParamByName('VALOR_TOTAL').AsFloat := sqlItensVenda.FieldByName('VALOR_TOTAL').AsFloat;
        qItem.ExecSQL;
        Inc(vSequencialItem);
        sqlItensVenda.Next;
      end;

    finally
      qItem.Free;
    end;

  finally
    qVenda.Free;
  end;
end;

end.
