object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 331
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 43
    Height = 15
    Caption = 'Cliente: '
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 53
    Height = 15
    Caption = 'Vendedor:'
  end
  object Label3: TLabel
    Left = 476
    Top = 11
    Width = 39
    Height = 15
    Caption = 'Lancto:'
  end
  object Label6: TLabel
    Left = 441
    Top = 251
    Width = 63
    Height = 15
    Caption = 'Total Venda:'
  end
  object btnCliente: TButtonedEdit
    Left = 62
    Top = 8
    Width = 59
    Height = 23
    Images = ImageList1
    RightButton.ImageIndex = 0
    RightButton.Visible = True
    TabOrder = 0
    Text = 'btnCliente'
  end
  object btnVendedor: TButtonedEdit
    Left = 62
    Top = 37
    Width = 59
    Height = 23
    Images = ImageList1
    RightButton.ImageIndex = 0
    RightButton.Visible = True
    TabOrder = 1
    Text = 'ButtonedEdit1'
  end
  object edtCliente: TDBEdit
    Left = 143
    Top = 8
    Width = 306
    Height = 23
    TabOrder = 2
  end
  object edtVendedor: TDBEdit
    Left = 143
    Top = 37
    Width = 306
    Height = 23
    TabOrder = 3
  end
  object edtLancto: TDBEdit
    Left = 521
    Top = 8
    Width = 111
    Height = 23
    DataField = 'LANCTO'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 66
    Width = 624
    Height = 175
    DataSource = dsItensVenda
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_CODIGO'
        Title.Alignment = taRightJustify
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
        FieldName = 'QUANTIDADE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Qtde.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_CUSTO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Unit'#225'rio'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'TOTAL'
        Width = 85
        Visible = True
      end>
  end
  object edtTotalVenda: TEdit
    Left = 511
    Top = 248
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 7
  end
  object BitBtn2: TBitBtn
    Left = 89
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 8
  end
  object BitBtn3: TBitBtn
    Left = 557
    Top = 280
    Width = 75
    Height = 42
    Caption = 'Salvar'
    TabOrder = 9
  end
  object BitBtn4: TBitBtn
    Left = 473
    Top = 280
    Width = 75
    Height = 42
    Caption = 'Cancelar'
    TabOrder = 10
  end
  object ImageList1: TImageList
    Left = 264
    Top = 112
    Bitmap = {
      494C010101000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD0200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000191919E6AEAEAE51FDFDFD02000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE01FCFCFC030000000000000000FBFBFB0400000000000000000000
      00FF050505FA202020DF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC03F4F4F40B525252AD151515EA262626D9A3A3A35C00000000000000FF0303
      03FC000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD026E6E
      6E91020202FD000000FF101010EF020202FD010101FE000000FF010101FE0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC03A5A5A55A0707
      07F85A5A5AA50000000000000000FEFEFE01F3F3F30C000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF1F1F
      1FE000000000000000000000000000000000FCFCFC03EFEFEF10000000FFA2A2
      A25DFBFBFB040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01FDFDFD02000000FFCDCD
      CD32FDFDFD020000000000000000000000000000000000000000000000FF2828
      28D7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01F0F0F00F000000FFE9E9
      E916FEFEFE0100000000000000000000000000000000000000000F0F0FF01616
      16E9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF8787
      8778FBFBFB040000000000000000000000000000000000000000000000FF5555
      55AAFCFCFC030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000232323DC0000
      00FF00000000FBFBFB04FEFEFE01FDFDFD02FDFDFD025D5D5DA2000000FFF4F4
      F40BFEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF89898976EAEAEA15D1D1D12E1D1D1DE2080808F76E6E6E91FDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE010000
      00001D1D1DE2010101FE000000FF000000FF000000FFA8A8A857FCFCFC030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE0100000000F0F0F00FFCFCFC0300000000FCFCFC03000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE01FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFB000000000000
      FFF1000000000000F363000000000000E047000000000000C00F000000000000
      861F000000000000CF0700000000000007CF00000000000007CF000000000000
      C7C7000000000000C807000000000000E00F000000000000D01F000000000000
      F4BF000000000000FCFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object sqlPadrao: TFDQuery
    Connection = MinhaConexao.Connection
    SQL.Strings = (
      'SELECT LANCTO, '
      '       CLI_CODIGO, '
      '       VENDEDOR_CODIGO, '
      '       TOTAL_VENDA, '
      '       STATUS'
      'FROM VENDA')
    Left = 224
    Top = 248
    object sqlPadraoLANCTO: TIntegerField
      FieldName = 'LANCTO'
      Origin = 'LANCTO'
      Required = True
    end
    object sqlPadraoCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      Required = True
    end
    object sqlPadraoVENDEDOR_CODIGO: TIntegerField
      FieldName = 'VENDEDOR_CODIGO'
      Origin = 'VENDEDOR_CODIGO'
    end
    object sqlPadraoTOTAL_VENDA: TFMTBCDField
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      Precision = 18
      Size = 2
    end
    object sqlPadraoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object dsPadrao: TDataSource
    DataSet = sqlPadrao
    Left = 280
    Top = 248
  end
  object sqlItensVenda: TFDQuery
    Connection = MinhaConexao.Connection
    SQL.Strings = (
      'select V.LANCTO,'
      '       V.LANCTO_ORIGEM,'
      '       V.PRO_CODIGO,'
      '       V.VALOR_VENDA,'
      '       V.VALOR_CUSTO,'
      '       V.QUANTIDADE,'
      '       V.ITENS,'
      '       P.DESCRICAO,'
      '       P.DESCRICAO_RESUMIDA,'
      '       P.UNIDADE'
      '  from VENDA_ITENS V'
      '  join PRODUTO P'
      '    on P.CODIGO = V.PRO_CODIGO')
    Left = 464
    Top = 104
    object sqlItensVendaLANCTO: TIntegerField
      FieldName = 'LANCTO'
      Origin = 'LANCTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlItensVendaLANCTO_ORIGEM: TIntegerField
      FieldName = 'LANCTO_ORIGEM'
      Origin = 'LANCTO_ORIGEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlItensVendaPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlItensVendaVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object sqlItensVendaVALOR_CUSTO: TFMTBCDField
      FieldName = 'VALOR_CUSTO'
      Origin = 'VALOR_CUSTO'
      Precision = 18
      Size = 2
    end
    object sqlItensVendaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object sqlItensVendaITENS: TIntegerField
      FieldName = 'ITENS'
      Origin = 'ITENS'
    end
    object sqlItensVendaDESCRICAO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 264
    end
    object sqlItensVendaDESCRICAO_RESUMIDA: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_RESUMIDA'
      Origin = 'DESCRICAO_RESUMIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 264
    end
    object sqlItensVendaUNIDADE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object dsItensVenda: TDataSource
    DataSet = sqlItensVenda
    Left = 464
    Top = 160
  end
end
