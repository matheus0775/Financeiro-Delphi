unit Cadastro.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, BtnListB,
  Vcl.ControlList, uConexao;

type
  TfrmCadastroProduto = class(TForm)
    Label2: TLabel;
    edtCodigo: TDBEdit;
    Label1: TLabel;
    edtDescricao: TDBEdit;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    edtPrecoCusto: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtDescResumido: TDBEdit;
    Label5: TLabel;
    edtPrecoVenda: TDBEdit;
    sqlPadrao: TFDQuery;
    sqlPadraoCODIGO: TIntegerField;
    dsPadrao: TDataSource;
    sqlPadraoDESCRICAO: TWideStringField;
    sqlPadraoDESCRICAO_RESUMIDA: TWideStringField;
    sqlPadraoPRECO_CUSTO: TFMTBCDField;
    sqlPadraoPRECO_VENDA: TFMTBCDField;
    lblunidade: TLabel;
    sqlPadraoUNIDADE: TWideStringField;
    cbxUnidade: TComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

procedure TfrmCadastroProduto.btnCancelarClick(Sender: TObject);
begin
  sqlPadrao.Cancel; // Cancela a edi��o e descarta altera��es
  btnNovo.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
  edtDescricao.Enabled := False;
  edtDescResumido.Enabled := False;
  edtPrecoCusto.Enabled := False;
  edtPrecoVenda.Enabled := False;
end;

procedure TfrmCadastroProduto.btnNovoClick(Sender: TObject);
var
  NovoCodigo: Integer;
  QueryTemp: TFDQuery;
begin
  if not sqlPadrao.Active then
    sqlPadrao.Open;

  // Criar um TFDQuery tempor�rio para buscar o pr�ximo c�digo
  QueryTemp := TFDQuery.Create(nil);
  try
    QueryTemp.Connection := sqlPadrao.Connection; // Usa a mesma conex�o do sqlPadrao
    QueryTemp.SQL.Text := 'SELECT GEN_ID(GEN_PRODUTO, 1) FROM RDB$DATABASE';
    QueryTemp.Open;
    NovoCodigo := QueryTemp.Fields[0].AsInteger;
    QueryTemp.Close;
  finally
    QueryTemp.Free;
  end;

  // Inicia a inser��o e define o novo c�digo gerado
  sqlPadrao.Append;
  sqlPadrao.FieldByName('CODIGO').AsInteger := NovoCodigo;

  btnNovo.Enabled := False;
  btnSalvar.Enabled := True;
  btnCancelar.Enabled := True;
  edtDescricao.Enabled := True;
  edtDescResumido.Enabled := True;
  edtPrecoCusto.Enabled := True;
  edtPrecoVenda.Enabled := True;
end;

procedure TfrmCadastroProduto.btnSalvarClick(Sender: TObject);
begin
  // Certifique-se de que o ComboBox tem um item selecionado
  sqlPadrao.Open();
  if cbxUnidade.ItemIndex <> -1 then
  begin
    // Atribui o valor da unidade selecionada ao campo 'UNIDADE' no Dataset
    if cbxUnidade.Text = 'Kilo' then
      sqlPadrao.FieldByName('UNIDADE').AsString := 'KG'
    else
      sqlPadrao.FieldByName('UNIDADE').AsString := 'UN';
  end;

  sqlPadrao.Post();
  sqlPadrao.Close();

  btnNovo.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
  edtDescricao.Enabled := False;
  edtDescResumido.Enabled := False;
  edtPrecoCusto.Enabled := False;
  edtPrecoVenda.Enabled := False;
end;

procedure TfrmCadastroProduto.edtDescricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;  // Evita que o "beep" de Enter seja emitido
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmCadastroProduto.FormCreate(Sender: TObject);
begin
  cbxUnidade.Items.Add('UNIDADE');
  cbxUnidade.Items.Add('Kilo');
  cbxUnidade.ItemIndex := 0;
end;

end.
