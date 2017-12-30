object frmPadraoPesquisa: TfrmPadraoPesquisa
  Left = 648
  Top = 42
  Caption = 'Manuten'#231#227'o Cadastral - Pesquisa'
  ClientHeight = 412
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 32
    Width = 769
    Height = 329
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Lista de Manuten'#231#227'o'
      object dbgrdPadraoPesquisa: TDBGrid
        Left = 0
        Top = 0
        Width = 761
        Height = 301
        Align = alClient
        Color = clCream
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawDataCell = dbgrdPadraoPesquisaDrawDataCell
        OnDblClick = dbgrdPadraoPesquisaDblClick
        OnTitleClick = dbgrdPadraoPesquisaTitleClick
      end
      object PnLocalizar: TPanel
        Left = 449
        Top = 32
        Width = 224
        Height = 51
        DockSite = True
        DragKind = dkDock
        DragMode = dmAutomatic
        TabOrder = 1
        Visible = False
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 45
          Height = 13
          Caption = 'Localizar:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 151
          Top = 9
          Width = 48
          Height = 11
          Caption = 'duplo-clique'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Image1: TImage
          Left = 200
          Top = 4
          Width = 18
          Height = 16
          Picture.Data = {
            07544269746D617076010000424D760100000000000076000000280000002000
            000010000000010004000000000000010000120B0000120B0000100000000000
            0000000000000000800000800000008080008000000080008000808000007F7F
            7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00333333000003333333333F777773FF333333008888800333333377333F37
            73F33330778707877033333733337F33373F3308888707888803337F33337F33
            337F3307778808877703337F33337FF3337F3308888000888803337F333777F3
            337F3307777000777703337F33377733337FB3088888888888033373FFFFFFFF
            FF733B30000000000033333777777777773333BBBB3333080333333333F3337F
            7F33BBBB707BB30803333333373F337F7F3333BB08033308033333337F7F337F
            7F333B3B08033308033333337F73FF737F33B33B778000877333333373F77733
            7333333B3088888033333333373FFFF73333333B330000033333333333777773
            3333}
          Transparent = True
        end
        object Edit1: TEdit
          Left = 8
          Top = 24
          Width = 209
          Height = 21
          TabOrder = 0
          Text = '..Selecione o campo desejado'
        end
      end
    end
  end
  object tmbManutTop1: TtmbManutTop
    Left = 0
    Top = 0
    Width = 769
    Height = 32
    AutoSize = True
    Bands = <
      item
        Break = False
        ImageIndex = -1
        MinHeight = 28
        Width = 665
      end
      item
        Break = False
        Control = tPanel11
        ImageIndex = -1
        MinHeight = 24
        Width = 98
      end>
    TtmbCria = True
    TtmbPreencheCombos = False
    TtmbDmGsiCdsSQL = dmGsi.cdsSQL
    TtmbRetornoVisivel = False
    TtmbPesquisar = False
    object tPanel11: tPanel1
      Left = 676
      Top = 2
      Width = 70
      Height = 24
      AutoSize = True
      TabOrder = 1
      tmbDBGrid = dbgrdPadraoPesquisa
      tmbCria = True
      tmbAjusta = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 361
    Width = 769
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object tmbManutBottom1: TtmbManutBottom
      Left = 0
      Top = 0
      Width = 769
      Height = 32
      Align = alBottom
      AutoSize = True
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          MinWidth = 137
          Width = 150
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          Width = 134
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          Width = 414
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 61
        end>
      TtmbCria = True
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 393
    Width = 769
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 650
    Top = 56
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object mnuFechar: TMenuItem
        Bitmap.Data = {
          F6040000424DF604000000000000360000002800000010000000130000000100
          200000000000C004000000000000000000000000000000000000FF00FF00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00525200005252
          000052520000BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF00FF00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00ADADAD00ADADAD00ADADAD0052520000FFFF
          0000EFEF0000ADADAD00ADADAD00ADADAD00BDBDBD00BDBDBD00A5A5A500A5A5
          A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A50052520000FFFF
          0000EFEF00008484000052520000949494009494940094949400A5A5A500A5A5
          A500A5A5A500A5A5A5009494940094949400949494009494940052520000FFFF
          0000EFEF000084840000848400005252000084848400848484005A5A5A005A5A
          5A005A5A5A005A5A5A005A5A5A0094949400949494009494940052520000FFFF
          0000EFEF00008484000084840000848400005A5A5A005A5A5A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00A5A5A500ADADAD00ADADAD0052520000FFFF
          0000EFEF000084840000848400008484000084848400ADADAD00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00A5A5A500A5A5A500ADADAD0052520000FFFF
          0000EFEF000084840000848400008484000084848400ADADAD00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00A5A5A500A5A5A500A5A5A50052520000FFFF
          0000EFEF00005A5A5A005A5A5A008484000084848400ADADAD00FF00FF00FF00
          FF00ADADAD00ADADAD0052520000A5A5A500A5A5A500A5A5A50052520000FFFF
          0000EFEF0000BDBDBD005A5A5A008484000084848400ADADAD00FF00FF008484
          840084848400848484005252000052520000A5A5A500A5A5A50052520000FFFF
          0000EFEF00005A5A5A005A5A5A008484000084848400ADADAD00FF00FF005252
          00005252000052520000525200008484000052520000A5A5A50052520000FFFF
          0000EFEF000084840000848400008484000084848400ADADAD0052520000FFFF
          0000FFFF0000FFFF0000FFFF0000FFFF0000EFEF00008484000052520000FFFF
          0000EFEF000084840000848400008484000084848400ADADAD0052520000FFFF
          0000FFFFCE00FFFFCE00FFFFCE00FFFF0000FFFF00008484000052520000FFFF
          0000EFEF000084840000848400008484000084848400ADADAD00FF00FF005252
          0000525200005252000052520000FFFF0000848400005252000052520000FFFF
          0000EFEF000084840000848400008484000084848400ADADAD00FF00FF00FF00
          FF00FF00FF00FF00FF005252000052520000949494008C8C8C00949494005252
          0000FFFF000084840000848400008484000084848400ADADAD00FF00FF00FF00
          FF00FF00FF00FF00FF0052520000848484008C8C8C008C8C8C00949494009494
          940052520000EFEF0000848400008484000084848400ADADAD00FF00FF00FF00
          FF00FF00FF00FF00FF00525200008C8C8C00848484008C8C8C008C8C8C009494
          940094949400FFFF0000EFEF00008484000084848400ADADAD00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF008484840084848400848484008C8C8C008C8C
          8C008C8C8C009494940052520000FFFF000084848400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF005A5A5A005A5A5A005A5A5A005A5A5A005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A00FF00FF00FF00FF00}
        Caption = '&Fechar'
        OnClick = mnuFecharClick
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 618
    Top = 56
  end
end
