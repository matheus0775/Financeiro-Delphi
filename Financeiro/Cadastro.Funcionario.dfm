inherited frmCadastroFuncionario: TfrmCadastroFuncionario
  Caption = 'Cadastro de Funcionario'
  PixelsPerInch = 96
  TextHeight = 15
  inherited sqlPadrao: TFDQuery
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM FUNCIONARIO')
  end
end
