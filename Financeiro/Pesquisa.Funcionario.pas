unit Pesquisa.Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmPesquisaFuncionario = class(TForm)
    edtCodigo: TEdit;
    lblProduto: TLabel;
    dbgProdutos: TDBGrid;
    edtNome: TEdit;
    btnPesquisar: TButton;
    dsPadrao: TDataSource;
    sqlPadrao: TFDQuery;
    sqlPadraoCODIGO: TIntegerField;
    sqlPadraoNOME: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaFuncionario: TfrmPesquisaFuncionario;

implementation

{$R *.dfm}

end.
