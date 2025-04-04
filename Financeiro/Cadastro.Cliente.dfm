object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Cliente'
  ClientHeight = 101
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 38
    Width = 39
    Height = 15
    Caption = 'Nome: '
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object edtNome: TDBEdit
    Left = 53
    Top = 35
    Width = 404
    Height = 23
    DataField = 'NOME'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 1
    OnKeyDown = edtNomeKeyDown
  end
  object btnSalvar: TBitBtn
    Left = 288
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnCancelar: TBitBtn
    Left = 384
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object edtCodigo: TDBEdit
    Left = 56
    Top = 2
    Width = 76
    Height = 23
    DataField = 'CODIGO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 4
  end
  object btnNovo: TBitBtn
    Left = 192
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = btnNovoClick
  end
  object sqlPadrao: TFDQuery
    Connection = MinhaConexao.Connection
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM CLIENTE')
    Left = 56
    Top = 40
    object sqlPadraoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPadraoNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 265
    end
  end
  object dsPadrao: TDataSource
    DataSet = sqlPadrao
    Left = 136
    Top = 32
  end
end
