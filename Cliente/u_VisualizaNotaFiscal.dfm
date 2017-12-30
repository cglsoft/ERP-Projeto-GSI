object frmVisualizaNotaFiscal: TfrmVisualizaNotaFiscal
  Left = 695
  Top = 76
  Width = 775
  Height = 462
  Caption = 'Visualiza'#231#227'o / Manuten'#231#227'o Geral de Nota Fiscal'
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
  object tmbManutTop1: TtmbManutTop
    Left = 0
    Top = 0
    Width = 767
    Height = 32
    AutoSize = True
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 671
      end
      item
        Break = False
        Control = AjustaGrid
        ImageIndex = -1
        MinHeight = 24
        Width = 90
      end>
    TtmbCria = True
    TtmbPreencheCombos = False
    TtmbRetornoVisivel = False
    TtmbPesquisar = False
    object Panel2: TPanel
      Left = 680
      Top = 0
      Width = 97
      Height = 26
      AutoSize = True
      BiDiMode = bdLeftToRight
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object AjustaGrid: tPanel1
      Left = 682
      Top = 2
      Width = 70
      Height = 24
      AutoSize = True
      TabOrder = 2
      tmbDBGrid = dbGridE
      tmbCria = True
      tmbAjusta = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 409
    Width = 767
    Height = 19
    Panels = <>
  end
  object PagePedidos: TPageControl
    Left = 0
    Top = 32
    Width = 767
    Height = 345
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    OnChange = PagePedidosChange
    object TabSheet1: TTabSheet
      Caption = 'Nota F'#237'scal de Entrada'
      object dbGridE: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 317
        Align = alClient
        Color = clCream
        DataSource = dmEF.dsNfe
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawDataCell = dbGridEDrawDataCell
        OnDblClick = dbGridEDblClick
        OnTitleClick = dbGridETitleClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Nota F'#237'scal de Sa'#237'da'
      ImageIndex = 1
      object dbGridS: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 317
        Align = alClient
        Color = clCream
        DataSource = dmEF.dsNfs
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawDataCell = dbGridSDrawDataCell
        OnDblClick = dbGridEDblClick
        OnTitleClick = dbGridSTitleClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 377
    Width = 767
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object tmbManutBottom1: TtmbManutBottom
      Left = 0
      Top = 0
      Width = 767
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
          Width = 175
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          Width = 366
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 66
        end>
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 614
    Top = 61
  end
  object PopupMenu2: TPopupMenu
    Left = 580
    Top = 61
    object Pesquisaincremental1: TMenuItem
      Caption = 'Pesquisa incremental..'
      OnClick = dbGridEDblClick
    end
  end
end
