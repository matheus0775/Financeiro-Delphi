object frmPesquisaProduto: TfrmPesquisaProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisar Produtos'
  ClientHeight = 301
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblProduto: TLabel
    Left = 16
    Top = 11
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object edtCodigo: TEdit
    Left = 59
    Top = 8
    Width = 70
    Height = 21
    TabOrder = 0
    Text = 'edtCodigo'
  end
  object edtDescricao: TEdit
    Left = 135
    Top = 8
    Width = 482
    Height = 21
    TabOrder = 1
    Text = 'edtDescricao'
  end
  object dbgProdutos: TDBGrid
    Left = 8
    Top = 35
    Width = 609
    Height = 254
    DataSource = dsPadrao
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgProdutosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_RESUMIDA'
        Title.Caption = 'Desc. Resumida'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'Un.'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'Pre'#231'o Ven.'
        Width = 64
        Visible = True
      end>
  end
  object btnPesquisar: TButton
    Left = 633
    Top = 8
    Width = 75
    Height = 57
    Caption = 'Pesquisar'
    TabOrder = 3
    OnClick = btnPesquisarClick
  end
  object dsPadrao: TDataSource
    DataSet = sqlPadrao
    Left = 112
    Top = 104
  end
  object sqlPadrao: TFDQuery
    Connection = MinhaConexao.Connection
    SQL.Strings = (
      ' select CODIGO, '
      '        DESCRICAO, '
      '        DESCRICAO_RESUMIDA, '
      '        PRECO_CUSTO, '
      '        PRECO_VENDA, '
      '        UNIDADE'
      ' from PRODUTO')
    Left = 192
    Top = 104
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
end
