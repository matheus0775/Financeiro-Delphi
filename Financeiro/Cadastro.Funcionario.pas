unit Cadastro.Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cadastro.Cliente, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCadastroFuncionario = class(TfrmCadastroCliente)
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmCadastroFuncionario.btnNovoClick(Sender: TObject);
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
    QueryTemp.SQL.Text := 'SELECT GEN_ID(GEN_FUNCIONARIO, 1) FROM RDB$DATABASE';
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
  edtNome.Enabled := True;
end;

end.
