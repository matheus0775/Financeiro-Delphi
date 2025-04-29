unit LancamentoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Model.Produto;

type
  TfrmLancamentoProduto = class(TForm)
    edtPesquisaProduto: TEdit;
    lblProduto: TLabel;
    edtQuantidade: TEdit;
    lblQuantidade: TLabel;
    edtPrecoVenda: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtTotalVenda: TEdit;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    ImageList1: TImageList;
    btnProduto: TButtonedEdit;
    procedure btnProdutoChange(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Pesquisa.Produto;

{$R *.dfm}

procedure TfrmLancamentoProduto.btnConfirmarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmLancamentoProduto.btnProdutoChange(Sender: TObject);
var
  vFormProduto: TfrmPesquisaProduto;
begin
  vFormProduto := TfrmPesquisaProduto.Create(self);
  try
    if vFormProduto.ShowModal = MrOk then
    begin
      btnProduto.Text := IntToStr(vFormProduto.ProdutoSelecionado.Codigo);
      edtPesquisaProduto.Text := vFormProduto.ProdutoSelecionado.Descricao;
      edtPrecoVenda.Text := CurrToStr(vFormProduto.ProdutoSelecionado.PrecoVenda);
    end;
  finally
    vFormProduto.Free();
  end;
end;

procedure TfrmLancamentoProduto.edtQuantidadeExit(Sender: TObject);
var
  Quantidade, PrecoVenda, ValorTotal: Double;
begin
  if TryStrToFloat(edtQuantidade.Text, Quantidade) and
     TryStrToFloat(edtPrecoVenda.Text, PrecoVenda) then
  begin
    ValorTotal := Quantidade * PrecoVenda;
    edtTotalVenda.Text := FormatFloat('0.00', ValorTotal);
  end
  else
    edtTotalVenda.Text := '0.00';
end;

end.
