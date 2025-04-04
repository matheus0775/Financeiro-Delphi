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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    IntegerField4: TIntegerField;
    dsItensVenda: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

end.
