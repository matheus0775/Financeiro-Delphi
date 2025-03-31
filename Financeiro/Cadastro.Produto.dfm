object frmCadastroProduto: TfrmCadastroProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 159
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label1: TLabel
    Left = 8
    Top = 38
    Width = 54
    Height = 15
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 130
    Top = 95
    Width = 67
    Height = 15
    Caption = 'Pre'#231'o Custo:'
  end
  object Label4: TLabel
    Left = 8
    Top = 70
    Width = 86
    Height = 15
    Caption = 'Desc. Resumida:'
  end
  object Label5: TLabel
    Left = 306
    Top = 96
    Width = 68
    Height = 15
    Caption = 'Pre'#231'o Venda:'
  end
  object lblunidade: TLabel
    Left = 8
    Top = 91
    Width = 47
    Height = 15
    Caption = 'Unidade:'
  end
  object edtCodigo: TDBEdit
    Left = 55
    Top = 2
    Width = 76
    Height = 23
    DataField = 'CODIGO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 6
  end
  object edtDescricao: TDBEdit
    Left = 107
    Top = 31
    Width = 357
    Height = 23
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 1
    OnKeyDown = edtDescricaoKeyDown
  end
  object btnNovo: TBitBtn
    Left = 199
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = btnNovoClick
  end
  object btnSalvar: TBitBtn
    Left = 295
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnCancelar: TBitBtn
    Left = 386
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 7
    OnClick = btnCancelarClick
  end
  object edtPrecoCusto: TDBEdit
    Left = 203
    Top = 92
    Width = 78
    Height = 23
    DataField = 'PRECO_CUSTO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 3
    OnKeyDown = edtDescricaoKeyDown
  end
  object edtDescResumido: TDBEdit
    Left = 100
    Top = 63
    Width = 357
    Height = 23
    CharCase = ecUpperCase
    DataField = 'DESCRICAO_RESUMIDA'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 2
    OnKeyDown = edtDescricaoKeyDown
  end
  object edtPrecoVenda: TDBEdit
    Left = 379
    Top = 93
    Width = 78
    Height = 23
    DataField = 'PRECO_VENDA'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 4
    OnKeyDown = edtDescricaoKeyDown
  end
  object cbxUnidade: TComboBox
    Left = 8
    Top = 112
    Width = 100
    Height = 23
    TabOrder = 8
    Text = 'cbxUnidade'
  end
  object sqlPadrao: TFDQuery
    Connection = MinhaConexao.Connection
    SQL.Strings = (
      'SELECT CODIGO, '
      '       DESCRICAO, '
      '       DESCRICAO_RESUMIDA, '
      '       PRECO_CUSTO, '
      '       PRECO_VENDA,'
      '       UNIDADE'
      'FROM PRODUTO')
    Left = 320
    Top = 8
    object sqlPadraoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPadraoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 264
    end
    object sqlPadraoDESCRICAO_RESUMIDA: TWideStringField
      FieldName = 'DESCRICAO_RESUMIDA'
      Origin = 'DESCRICAO_RESUMIDA'
      Size = 264
    end
    object sqlPadraoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object sqlPadraoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object sqlPadraoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
  end
  object dsPadrao: TDataSource
    DataSet = sqlPadrao
    Left = 376
    Top = 8
  end
end
