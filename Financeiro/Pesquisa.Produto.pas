unit Pesquisa.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, uConexao, Model.Produto;

type
  TfrmPesquisaProduto = class(TForm)
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    lblProduto: TLabel;
    dbgProdutos: TDBGrid;
    dsPadrao: TDataSource;
    sqlPadrao: TFDQuery;
    btnPesquisar: TButton;
    sqlPadraoCODIGO: TIntegerField;
    sqlPadraoDESCRICAO: TWideStringField;
    sqlPadraoDESCRICAO_RESUMIDA: TWideStringField;
    sqlPadraoPRECO_CUSTO: TFMTBCDField;
    sqlPadraoPRECO_VENDA: TFMTBCDField;
    sqlPadraoUNIDADE: TWideStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure dbgProdutosDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    ProdutoSelecionado: TProduto;
  end;

implementation

{$R *.dfm}

procedure TfrmPesquisaProduto.btnPesquisarClick(Sender: TObject);
begin
  sqlPadrao.Close;
  if (Trim(edtCodigo.Text) <> '') or (Trim(edtDescricao.Text) <> '') then
  begin
    sqlPadrao.SQL.Text := sqlPadrao.SQL.Text + ' WHERE 1=1'; // Base para facilitar a concatenação com AND
    if Trim(edtCodigo.Text) <> '' then
      sqlPadrao.SQL.Text := sqlPadrao.SQL.Text + ' AND CODIGO = :CODIGO';
    if Trim(edtDescricao.Text) <> '' then
      sqlPadrao.SQL.Text := sqlPadrao.SQL.Text + ' AND DESCRICAO LIKE :DESCRICAO';
  end;

  // Configura os parâmetros conforme os filtros
  if Trim(edtCodigo.Text) <> '' then
    sqlPadrao.ParamByName('CODIGO').AsInteger := StrToIntDef(Trim(edtCodigo.Text), 0);
  if Trim(edtDescricao.Text) <> '' then
    sqlPadrao.ParamByName('DESCRICAO').AsString := '%' + Trim(edtDescricao.Text) + '%';

  sqlPadrao.Open;
end;

procedure TfrmPesquisaProduto.dbgProdutosDblClick(Sender: TObject);
begin
  if not sqlPadrao.IsEmpty() then
  begin
    ProdutoSelecionado.Codigo := sqlPadrao.FieldByName('CODIGO').AsInteger;
    ProdutoSelecionado.Descricao := sqlPadrao.FieldByName('DESCRICAO').AsString;
    ProdutoSelecionado.DescricaoResumida := sqlPadrao.FieldByName('DESCRICAO_RESUMIDA').AsString;
    ProdutoSelecionado.PrecoCusto := sqlPadrao.FieldByName('PRECO_CUSTO').AsCurrency;
    ProdutoSelecionado.PrecoVenda := sqlPadrao.FieldByName('PRECO_VENDA').AsCurrency;
    ProdutoSelecionado.Unidade := sqlPadrao.FieldByName('UNIDADE').AsString;
    ModalResult := mrOk;
  end;
end;

procedure TfrmPesquisaProduto.FormCreate(Sender: TObject);
begin
  ProdutoSelecionado := TProduto.Create();
end;

procedure TfrmPesquisaProduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ProdutoSelecionado);
end;

end.
