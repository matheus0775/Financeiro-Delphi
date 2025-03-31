program Financeiro;

uses
  Vcl.Forms,
  uConexao in 'uConexao.pas' {MinhaConexao: TDataModule},
  Cadastro.Cliente in 'Cadastro.Cliente.pas' {frmCadastroCliente},
  Cadastro.Fornecedor in 'Cadastro.Fornecedor.pas' {frmCadastroFornecedor},
  Cadastro.Funcionario in 'Cadastro.Funcionario.pas' {frmCadastroFuncionario},
  Cadastro.Produto in 'Cadastro.Produto.pas' {frmCadastroProduto},
  Venda in 'Venda.pas' {frmVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMinhaConexao, MinhaConexao);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.Run;
end.
