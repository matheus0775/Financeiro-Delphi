unit Pesquisa.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids,
  Model.Cliente;

type
  TfrmPesquisaCliente = class(TForm)
    dbgProdutos: TDBGrid;
    edtNome: TEdit;
    edtCodigo: TEdit;
    lblProduto: TLabel;
    btnPesquisar: TButton;
    sqlPadrao: TFDQuery;
    dsPadrao: TDataSource;
    sqlPadraoCODIGO: TIntegerField;
    sqlPadraoNOME: TWideStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgProdutosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    ProdutoSelecionado: TCliente;
  end;

implementation

{$R *.dfm}

procedure TfrmPesquisaCliente.btnPesquisarClick(Sender: TObject);
begin
  sqlPadrao.Close();
  if (Trim(edtCodigo.Text) <> '') or (Trim(edtNome.Text) <> '') then
  begin
    sqlPadrao.SQL.Text := sqlPadrao.SQL.Text + ' WHERE 1=1';
    if Trim(edtCodigo.Text) <> '' then
      sqlPadrao.SQL.Text := sqlPadrao.SQL.Text + ' AND CODIGO = :CODIGO';
    if Trim(edtNome.Text) <> '' then
      sqlPadrao.SQL.Text := sqlPadrao.SQL.Text + ' AND NOME LIKE :DESCRICAO';
  end;

  if Trim(edtCodigo.Text) <> '' then
    sqlPadrao.ParamByName('CODIGO').AsInteger := StrToIntDef(Trim(edtCodigo.Text), 0);
  if Trim(edtNome.Text) <> '' then
    sqlPadrao.ParamByName('NOME').AsString := '%' + Trim(edtNome.Text) + '%';

  sqlPadrao.Open();
end;

procedure TfrmPesquisaCliente.dbgProdutosDblClick(Sender: TObject);
begin
  if not sqlPadrao.IsEmpty() then
  begin
    ProdutoSelecionado.Codigo := sqlPadrao.FieldByName('CODIGO').AsInteger;
    ProdutoSelecionado.Nome := sqlPadrao.FieldByName('NOME').AsString;
  end;
end;

procedure TfrmPesquisaCliente.FormCreate(Sender: TObject);
begin
  ProdutoSelecionado := TCliente.Create();
end;

procedure TfrmPesquisaCliente.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ProdutoSelecionado);
end;

end.
