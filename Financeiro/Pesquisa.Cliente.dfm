object frmPesquisaCliente: TfrmPesquisaCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Cliente'
  ClientHeight = 300
  ClientWidth = 572
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
  object dbgProdutos: TDBGrid
    Left = 8
    Top = 35
    Width = 465
    Height = 254
    DataSource = dsPadrao
    TabOrder = 0
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
        FieldName = 'NOME'
        Title.Caption = 'Descri'#231#227'o'
        Width = 365
        Visible = True
      end>
  end
  object edtNome: TEdit
    Left = 135
    Top = 8
    Width = 338
    Height = 21
    TabOrder = 1
    Text = 'edtNome'
  end
  object edtCodigo: TEdit
    Left = 59
    Top = 8
    Width = 70
    Height = 21
    TabOrder = 2
    Text = 'edtCodigo'
  end
  object btnPesquisar: TButton
    Left = 489
    Top = 8
    Width = 75
    Height = 57
    Caption = 'Pesquisar'
    TabOrder = 3
    OnClick = btnPesquisarClick
  end
  object sqlPadrao: TFDQuery
    Connection = MinhaConexao.Connection
    SQL.Strings = (
      'select CODIGO, '
      '       NOME'
      'from CLIENTE')
    Left = 192
    Top = 104
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
    Left = 112
    Top = 104
  end
end
