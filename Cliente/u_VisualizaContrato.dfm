object frmVisualizaContrato: TfrmVisualizaContrato
  Left = 88
  Top = 69
  Caption = 'Visualiza Contrato'
  ClientHeight = 564
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 290
    Width = 825
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 262
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 546
    Width = 825
    Height = 18
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 60
    Width = 825
    Height = 230
    Align = alTop
    Caption = 'Dados do Contrato '
    TabOrder = 1
    object dbGridVContrato: TDBGrid
      Left = 2
      Top = 15
      Width = 821
      Height = 213
      Align = alClient
      Color = clCream
      DataSource = dmCM.dsVisualContrato
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = dbGridVContratoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CONTRATOID'
          Title.Caption = 'Contrato Id'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTRATOANTIGOID'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANOID'
          Title.Caption = 'Ano Id'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIEID'
          Title.Caption = 'Serie Id'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELOID'
          Title.Caption = 'Modelo Id'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRMENSAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRCONTRATO'
          Title.Caption = 'Vlr. Contrato (S'#233'rie/Modelo)'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'L_CIDADE'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'L_SIGLAUFID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAINICIOCONTRATO'
          Title.Caption = 'Data In'#237'cio'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAFIMCONTRATO'
          Title.Caption = 'Data Final'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDCORRETIVAS'
          Title.Caption = 'Corretivas'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDCORRETIVASUTIL'
          Title.Caption = 'Corretivas Util.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPREVENTIVAS'
          Title.Caption = 'Preventivas'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPREVENTIVASUTIL'
          Title.Caption = 'Preventivas Util.'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPECAS'
          Title.Caption = 'Pe'#231'as'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPECASUTIL'
          Title.Caption = 'Pe'#231'as Util.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FILIALID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'L_FILIALNOME'
          Visible = True
        end>
    end
  end
  object tmbManutTop1: TtmbManutTop
    Left = 0
    Top = 0
    Width = 825
    Height = 60
    AutoSize = True
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 821
      end
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 821
      end>
    TtmbCria = True
    TtmbPreencheCombos = False
    TtmbRetornoVisivel = False
    TtmbPesquisar = False
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 30
      Width = 808
      Height = 26
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 293
    Width = 825
    Height = 253
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Dados do Contrato'
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 817
        Height = 225
        Align = alClient
        Caption = 'Dados Principais '
        TabOrder = 0
        object Label6: TLabel
          Left = 7
          Top = 50
          Width = 79
          Height = 13
          Caption = 'Tipo de Contrato'
        end
        object Label7: TLabel
          Left = 569
          Top = 124
          Width = 101
          Height = 13
          Caption = 'Forma de Pagamento'
        end
        object Label16: TLabel
          Left = 145
          Top = 50
          Width = 59
          Height = 13
          Caption = 'Qtd. Parcela'
        end
        object Label15: TLabel
          Left = 669
          Top = 47
          Width = 45
          Height = 13
          Caption = 'Vlr. Total '
        end
        object Label14: TLabel
          Left = 551
          Top = 47
          Width = 52
          Height = 13
          Caption = 'Vlr. Mensal'
        end
        object Label2: TLabel
          Left = 97
          Top = 14
          Width = 44
          Height = 13
          Caption = 'Cliente Id'
        end
        object Label1: TLabel
          Left = 233
          Top = 14
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 7
          Top = 14
          Width = 55
          Height = 13
          Caption = 'Empresa ID'
        end
        object Label4: TLabel
          Left = 7
          Top = 169
          Width = 116
          Height = 13
          Caption = 'Observa'#231#227'o do Contrato'
        end
        object Label5: TLabel
          Left = 7
          Top = 86
          Width = 114
          Height = 13
          Caption = 'Manuten'#231#227'o Preventiva'
        end
        object Label17: TLabel
          Left = 279
          Top = 86
          Width = 105
          Height = 13
          Caption = 'Manuten'#231#227'o Corretiva'
        end
        object Label8: TLabel
          Left = 7
          Top = 123
          Width = 53
          Height = 13
          Caption = 'Qtd. Pe'#231'as'
        end
        object Label9: TLabel
          Left = 80
          Top = 123
          Width = 101
          Height = 13
          Caption = 'Qtd. Pe'#231'as Utilizadas'
        end
        object Label10: TLabel
          Left = 185
          Top = 123
          Width = 79
          Height = 13
          Caption = 'Qtd. Preventivas'
        end
        object Label11: TLabel
          Left = 280
          Top = 123
          Width = 100
          Height = 13
          Caption = 'Qtd. Preventivas Util.'
        end
        object Label12: TLabel
          Left = 392
          Top = 123
          Width = 70
          Height = 13
          Caption = 'Qtd. Corretivas'
        end
        object Label13: TLabel
          Left = 472
          Top = 123
          Width = 91
          Height = 13
          Caption = 'Qtd. Corretivas Util.'
        end
        object Label18: TLabel
          Left = 278
          Top = 50
          Width = 131
          Height = 13
          Caption = 'Vlr. Contrato (S'#233'rie/Modelo)'
        end
        object Label19: TLabel
          Left = 433
          Top = 47
          Width = 97
          Height = 13
          Caption = 'Vlr. Mensal Aparelho'
        end
        object DBEdit3: TDBEdit
          Left = 7
          Top = 26
          Width = 64
          Height = 21
          Color = clInactiveBorder
          DataField = 'EMPRESAID'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 569
          Top = 143
          Width = 238
          Height = 21
          Color = clInactiveBorder
          DataField = 'PAGAMENTO'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 144
          Top = 65
          Width = 128
          Height = 21
          Color = clInactiveBorder
          DataField = 'QTDPARCELA'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 669
          Top = 66
          Width = 138
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRTOTALCONTRATO'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 551
          Top = 66
          Width = 112
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRCONTRATOMENSAL'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 97
          Top = 26
          Width = 129
          Height = 21
          Color = clInactiveBorder
          DataField = 'CLIENTEID'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 232
          Top = 26
          Width = 449
          Height = 21
          Color = clInactiveBorder
          DataField = 'L_NOME_CLIENTE'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 6
        end
        object DBCheckBox1: TDBCheckBox
          Left = 280
          Top = 6
          Width = 110
          Height = 17
          Caption = 'Cancelado'
          DataField = 'CANCELADO'
          DataSource = dmCM.dsVisualContrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit2: TDBEdit
          Left = 7
          Top = 65
          Width = 129
          Height = 21
          Color = clInactiveBorder
          DataField = 'DESCRICAO'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 8
        end
        object DBMemo1: TDBMemo
          Left = 7
          Top = 184
          Width = 800
          Height = 57
          DataField = 'OBSCLIENTE'
          DataSource = dmCM.dsVisualContrato
          ScrollBars = ssVertical
          TabOrder = 9
        end
        object DBEdit4: TDBEdit
          Left = 7
          Top = 101
          Width = 265
          Height = 21
          Color = clInactiveBorder
          DataField = 'L_DESCRICAOPREVENTIVA'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 10
        end
        object DBEdit6: TDBEdit
          Left = 279
          Top = 101
          Width = 530
          Height = 21
          Color = clInactiveBorder
          DataField = 'L_DESCRCORRETIVA'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 11
        end
        object DBEdit8: TDBEdit
          Left = 7
          Top = 139
          Width = 64
          Height = 21
          Color = clInactiveBorder
          DataField = 'QTDPECAS'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 12
        end
        object DBEdit9: TDBEdit
          Left = 80
          Top = 139
          Width = 64
          Height = 21
          Color = clInactiveBorder
          DataField = 'QTDPECASUTIL'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 13
        end
        object DBEdit10: TDBEdit
          Left = 184
          Top = 139
          Width = 64
          Height = 21
          Color = clInactiveBorder
          DataField = 'QTDPREVENTIVAS'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 14
        end
        object DBEdit11: TDBEdit
          Left = 280
          Top = 139
          Width = 64
          Height = 21
          Color = clInactiveBorder
          DataField = 'QTDPREVENTIVASUTIL'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 15
        end
        object DBEdit12: TDBEdit
          Left = 392
          Top = 139
          Width = 64
          Height = 21
          Color = clInactiveBorder
          DataField = 'QTDCORRETIVAS'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 16
        end
        object DBEdit13: TDBEdit
          Left = 472
          Top = 139
          Width = 64
          Height = 21
          Color = clInactiveBorder
          DataField = 'QTDCORRETIVASUTIL'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 17
        end
        object DBEdit17: TDBEdit
          Left = 278
          Top = 66
          Width = 147
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRCONTRATO'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 18
        end
        object DBEdit18: TDBEdit
          Left = 433
          Top = 66
          Width = 112
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRMENSAL'
          DataSource = dmCM.dsVisualContrato
          TabOrder = 19
        end
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actExportar
            ImageIndex = 1
          end
          item
            Action = Action1
            Caption = '&Fechar'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 456
    Top = 121
    StyleName = 'XP Style'
    object actExportar: TAction
      Category = 'Ferramentas'
      Caption = 'Exportar'
      Hint = 'Exportar'
      ImageIndex = 1
      OnExecute = actExportarExecute
    end
    object Action1: TAction
      Category = 'Ferramentas'
      Caption = 'Fechar'
      ImageIndex = 0
      OnExecute = Action1Execute
    end
  end
  object ImageList1: TImageList
    Left = 536
    Top = 121
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000007F0000007F3F00007F3F
      00007F3F00007F3F00007F3F00007F3F00007F3F000000000000000000007F00
      00007F0000007F0000007F000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F000000FF000000FF3F0000FF7F
      0000FF7F0000FF7F0000FF7F0000FF7F0000FF7F00007F7F00009F9F0000BF00
      0000FF000000FF000000FF0000007F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F000000FF000000FF000000FF3F
      0000FF7F0000FF7F0000FF7F0000FF7F0000FF7F00007F7F0000BFBF00006060
      0000BF000000FF000000FF0000007F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F0000007F0000007F00
      00007F3F00007F3F0000FFBF0000FFBF0000FFBF00007F7F0000BFBF00008080
      0000606000007F0000007F000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      0000BFBF0000BFBF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000808080008080
      80008080800080808000808080008080800000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000004040400040404000404040007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0020200000000000008080800080808000808080007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF00000000000000000000000000C0C0
      C000C0C0C000C0C0C00080808000FFFF000000000000FFFF0000FFFF0000FFFF
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005F5F0000606000006060600080808000808080007F7F00009F9F00002020
      20008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000C0C0C00080808000FFFF000000000000FFFF0000FFFF0000FFFF00000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F0000DFDF00006060000060606000808080007F7F00009F9F00003F3F
      3F008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFF000000000000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F0000BFBF0000BFBF0000BFBF
      0000DFDF0000FFFF0000DFDF000060600000606060007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F0000FFFF3F00FFFF7F00FFFF
      7F00FFFF7F00FFFFBF00FFFF3F007F7F0000606060007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF00000000000000000000000000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000C0C0C000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F0000FFFF3F007F7F000060606000808080007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000FFFF00000000
      0000FFFF0000FFFF0000FFFF000000000000C0C0C000C0C0C000C0C0C0000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F00007F7F00006060600080808000808080007F7F3F00BFBF00008080
      00008080000040404000FFFFFF00FFFFFF0000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000000000000000000000000000C0C0C000C0C0C000C0C0
      C000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00202000000000000080808000808080008080800060606000BFBF7F009F9F
      00008080000040404000FFFFFF00FFFFFF000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008080800080808000808080008080800060606000BFBF
      7F009F9F000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000040404000404040004040400040404000404040002020
      20007F7F3F0020202000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008021FFFF000000000000FFFF00000000
      0000FFC100000000800180010000000000008001000000000000800000000000
      0000C000000000000000E000000000000000F000000000000000E00F00000000
      0000C00700000000000080030000000000000101000000000000038100000000
      000007C1000000000000FFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
