object MinhaConexao: TMinhaConexao
  OldCreateOrder = True
  Height = 117
  Width = 171
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\GIELOW.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 32
  end
end
