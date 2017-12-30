object frmOSDemo: TfrmOSDemo
  Left = 0
  Top = 0
  Caption = 'OS Demonstra'#231#227'o'
  ClientHeight = 551
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 745
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 741
      end>
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 728
      Height = 25
      UseSystemFont = False
      ActionManager = actmngManutencao
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Spacing = 0
    end
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 728
      Height = 26
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
  end
  object pgctrlDadosDemo: TPageControl
    Left = 0
    Top = 29
    Width = 745
    Height = 502
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados da Demonstra'#231#227'o'
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 737
        Height = 209
        Hint = 'Dados do Or'#231'amento'
        Align = alTop
        Caption = 'Dados complementares'
        TabOrder = 0
        object Label61: TLabel
          Left = 8
          Top = 67
          Width = 64
          Height = 13
          Hint = 'Data Entrega'
          Caption = 'Data Entrega'
        end
        object Label62: TLabel
          Left = 280
          Top = 67
          Width = 67
          Height = 13
          Hint = 'Data Retirada'
          Caption = 'Data Retirada'
        end
        object Label63: TLabel
          Left = 537
          Top = 67
          Width = 62
          Height = 13
          Caption = 'Tens'#227'o Local'
        end
        object Label35: TLabel
          Left = 280
          Top = 90
          Width = 50
          Height = 13
          Caption = 'Vlr.Seguro'
          FocusControl = DBEdit53
        end
        object Label67: TLabel
          Left = 8
          Top = 93
          Width = 45
          Height = 13
          Caption = 'Vlr. Frete'
          FocusControl = DBEdit54
        end
        object Label69: TLabel
          Left = 8
          Top = 132
          Width = 72
          Height = 13
          Hint = 'Servi'#231'o Solicitado'
          Caption = 'Obs do Servi'#231'o'
        end
        object Label1: TLabel
          Left = 8
          Top = 18
          Width = 93
          Height = 13
          Caption = 'Resp. Recebimento'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 8
          Top = 39
          Width = 91
          Height = 26
          Caption = 'Nome dos m'#233'dicos  respons'#225'veis'
          FocusControl = DBEdit2
          WordWrap = True
        end
        object Label3: TLabel
          Left = 8
          Top = 116
          Width = 281
          Height = 13
          Caption = 'Detalhes do local de instala'#231#227'o : ESCADA / Doc de Imagem'
          FocusControl = DBEdit3
        end
        object wwDBDateTimePicker3: TwwDBDateTimePicker
          Left = 105
          Top = 67
          Width = 156
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAENTREGA'
          DataSource = dmOS.dsOs
          Epoch = 1950
          ShowButton = True
          TabOrder = 0
        end
        object wwDBDateTimePicker4: TwwDBDateTimePicker
          Left = 353
          Top = 67
          Width = 156
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATASAIDALABORATORIO'
          DataSource = dmOS.dsOs
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
        end
        object DBEdit49: TDBEdit
          Left = 605
          Top = 67
          Width = 117
          Height = 21
          DataField = 'TENSAOLOCAL'
          DataSource = dmOS.dsOs
          TabOrder = 2
        end
        object DBEdit53: TDBEdit
          Left = 353
          Top = 91
          Width = 116
          Height = 21
          DataField = 'VLRSEGURO'
          DataSource = dmOS.dsOs
          TabOrder = 3
        end
        object DBEdit54: TDBEdit
          Left = 105
          Top = 91
          Width = 117
          Height = 21
          DataField = 'VLRFRETE'
          DataSource = dmOS.dsOs
          TabOrder = 4
        end
        object DBEdit55: TDBEdit
          Left = 8
          Top = 146
          Width = 712
          Height = 57
          Hint = 'Endere'#231'o de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'OBSSERVICO'
          DataSource = dmOS.dsOs
          TabOrder = 5
        end
        object DBEdit1: TDBEdit
          Left = 105
          Top = 15
          Width = 615
          Height = 21
          DataField = 'RESPRECEBIMENTO'
          DataSource = dmOS.dsOs
          TabOrder = 6
        end
        object DBEdit2: TDBEdit
          Left = 105
          Top = 42
          Width = 616
          Height = 21
          DataField = 'OBSDEMO1'
          DataSource = dmOS.dsOs
          TabOrder = 7
        end
        object DBEdit3: TDBEdit
          Left = 353
          Top = 113
          Width = 367
          Height = 21
          DataField = 'OBSDEMO2'
          DataSource = dmOS.dsOs
          TabOrder = 8
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 209
        Width = 737
        Height = 265
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Equipamentos'
          object dbgrdOSDemo: TDBGrid
            Left = 0
            Top = 0
            Width = 662
            Height = 237
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmOS.dsOSDemo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEMID'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DEMOCATALOGOID'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAODEMOCATALOGO'
                Width = 209
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPRESAID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUTOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOPORTUGUES'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_PARTNUMBERID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_OBSERVACAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIEID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Width = 64
                Visible = True
              end>
          end
          object tmbedtListDemo: TtmbEdicaoLista
            Left = 662
            Top = 0
            Width = 67
            Height = 237
            Hint = 'Horas'
            Align = alRight
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TtmbCriar = True
            TtmbClientDataSet = dmOS.cdsOSDemo
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmOS.dsOSDemo
            TtmbFontDefaut = False
            TtmbDesativaInserir = False
            TtmbDireito = 'Item'
            object tPanel11: tPanel1
              Left = 1
              Top = 117
              Width = 70
              Height = 24
              AutoSize = True
              TabOrder = 0
              tmbDBGrid = dbgrdOSDemo
              tmbCria = True
              tmbAjusta = True
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Cat'#225'logos de Demonstra'#231#227'o'
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 737
        Height = 474
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Equipamentos'
          object Splitter1: TSplitter
            Left = 0
            Top = 198
            Width = 729
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 248
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 201
            Width = 729
            Height = 245
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmOS.dsDemoCatalogoItem
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEMID'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPRESAID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUTOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOPORTUGUES'
                Width = 256
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_PARTNUMBERID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_OBSERVACAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIEID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Width = 64
                Visible = True
              end>
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 729
            Height = 198
            Align = alTop
            Color = clCream
            Ctl3D = True
            DataSource = dmOS.dsDemoCatalogo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'DEMOCATALOGOID'
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAOEQUIPAMENTO'
                Width = 281
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPRESAID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUTOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOPORTUGUES'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_PARTNUMBERID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_OBSERVACAO'
                Width = 64
                Visible = True
              end>
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 531
    Width = 745
    Height = 20
    Panels = <
      item
        Width = 280
      end
      item
        Width = 200
      end>
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actAdicCatDemo
            Caption = '&Adicionar Catalogo Demo'
            ImageIndex = 2
          end
          item
            Action = actImpOS
            Caption = '&Imprimir Sol. Demo'
            ImageIndex = 0
          end
          item
            Action = actFechar
            Caption = '&Fechar'
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 336
    Top = 20
    StyleName = 'XP Style'
    object actImpOS: TAction
      Category = 'Demonstra'#231#227'o'
      Caption = 'Imprimir Sol. Demo'
      Hint = 'Imprimir solicita'#231#227'o de demonstra'#231#227'o'
      ImageIndex = 0
      OnExecute = actImpOSExecute
    end
    object actAdicCatDemo: TAction
      Category = 'Demonstra'#231#227'o'
      Caption = 'Adicionar Catalogo Demo'
      Hint = 'Adicionar cat'#225'logo de demonstra'#231#227'o'
      ImageIndex = 2
      OnExecute = actAdicCatDemoExecute
    end
    object actFechar: TAction
      Category = 'Demonstra'#231#227'o'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 1
      OnExecute = actFecharExecute
    end
  end
  object ImageList1: TImageList
    Left = 408
    Top = 10
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B3900007B39
      00007B3900007B3900007B3900007B3900007B39000000000000000000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF390000FF7B
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B00009C9C0000BD00
      0000FF000000FF000000FF0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF000000FF39
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B0000BDBD00006363
      0000BD000000FF000000FF0000007B000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000BD00000000000000000000000000000000BDBD0000BDBD0000BDBD0000BD
      BD0000BDBD00000000000000000000000000000000007B0000007B0000007B00
      00007B3900007B390000FFBD0000FFBD0000FFBD00007B7B0000BDBD00008484
      0000636300007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD000000BD000000BD000000BD00
      0000BD000000BD00000000000000000000000000000000000000000000000000
      0000000000000000000000BDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000BD000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000004242420042424200424242007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF007B0000007B00
      0000FFFFFF007B000000FFFFFF00000000007B7B7B0000000000000000000000
      0000000000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0021210000000000008484840084848400848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF007B0000007B00
      00007B0000007B000000FFFFFF00000000007B7B7B0000000000000000000000
      00007B7B7B00000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005A5A0000636300006363630084848400848484007B7B00009C9C00002121
      21008484000042424200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      00007B7B0000DEDE00006363000063636300848484007B7B00009C9C00003939
      39008484000042424200FFFFFF00FFFFFF0000000000FFFFFF007B0000007B00
      00007B0000007B000000FFFFFF00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000005A5A0000BDBD0000BDBD0000BDBD
      0000DEDE0000FFFF0000DEDE000063630000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B0000FFFF3900FFFF7B00FFFF
      7B00FFFF7B00FFFFBD00FFFF39007B7B0000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B0000FFFF39007B7B000063636300848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF007B0000007B00
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B00007B7B00006363630084848400848484007B7B3900BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00212100000000000084848400848484008484840063636300BDBD7B009C9C
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400848484008484840063636300BDBD
      7B009C9C000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000042424200424242004242420042424200424242002121
      21007B7B390021212100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF8021FFFF0000FF030000FFFF0000
      EE01000080070000E6008001800700000200000080030000E654000080010000
      EE04000080700000FF01000080780000C103000080680000C181000080480000
      01C100008083000001FF00008187000001FF0000838F000003FF000087DF0000
      07FF0000FFFF00000FFF0000FFFF000000000000000000000000000000000000
      000000000000}
  end
end
