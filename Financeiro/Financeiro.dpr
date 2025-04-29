program Financeiro;

uses
  Vcl.Forms,
  uConexao in 'uConexao.pas' {MinhaConexao: TDataModule},
  Cadastro.Cliente in 'Cadastro.Cliente.pas' {frmCadastroCliente},
  Cadastro.Fornecedor in 'Cadastro.Fornecedor.pas' {frmCadastroFornecedor},
  Cadastro.Funcionario in 'Cadastro.Funcionario.pas' {frmCadastroFuncionario},
  Cadastro.Produto in 'Cadastro.Produto.pas' {frmCadastroProduto},
  Venda in 'Venda.pas' {frmVenda},
  Pesquisa.Produto in 'Pesquisa.Produto.pas' {frmPesquisaProduto},
  Model.Produto in 'Model.Produto.pas',
  Pesquisa.Cliente in 'Pesquisa.Cliente.pas' {frmPesquisaCliente},
  Model.Cliente in 'Model.Cliente.pas',
  Model.Funcionario in 'Model.Funcionario.pas',
  Pesquisa.Funcionario in 'Pesquisa.Funcionario.pas' {frmPesquisaFuncionario},
  LancamentoProduto in 'LancamentoProduto.pas' {frmLancamentoProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMinhaConexao, MinhaConexao);
  Application.Run;
end.
