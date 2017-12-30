object frmPadraoEdicao: TfrmPadraoEdicao
  Left = 335
  Top = 49
  Caption = 'Manuten'#231#227'o Cadastral Padr'#227'o'
  ClientHeight = 427
  ClientWidth = 530
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
  object PageControl1: TPageControl
    Left = 0
    Top = 32
    Width = 530
    Height = 344
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 337
    object TabSheet1: TTabSheet
      Caption = 'Manuten'#231#227'o Cadastral'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object tmbdtinspCadastro: TtmbDataInspector
        Left = 0
        Top = 0
        Width = 522
        Height = 316
        DisableThemes = False
        Align = alClient
        Color = clCream
        CaptionColor = clGray
        TabOrder = 0
        Items = <>
        CaptionWidth = 195
        Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert]
        PaintOptions.AlternatingRowRegions = [arrFixedColumns]
        PaintOptions.BackgroundOptions = [coFillDataCells, coBlendFixedColumn, coBlendActiveRecord, coBlendAlternatingRow]
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        LineStyleCaption = ovDottedLine
        LineStyleData = ovDottedLine
        DottedLineColor = clGrayText
        CaptionIndent = 16
        OnItemChanged = tmbdtinspCadastroItemChanged
        OnButtonClick = tmbdtinspCadastrButtonClick
        ExplicitHeight = 309
      end
    end
  end
  object tmbEdicaoTop1: TtmbEdicaoTop
    Tag = 255
    Left = 0
    Top = 0
    Width = 530
    Height = 32
    AutoSize = True
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 526
      end>
    FixedSize = True
    TtmbCria = True
    TtmbFormulario = Owner
    ExplicitWidth = 152
  end
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 530
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 369
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 530
      Height = 32
      Align = alBottom
      AutoSize = True
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          MinWidth = 137
          Width = 137
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          Width = 278
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 94
        end>
      TtmbCria = True
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 408
    Width = 530
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
    ExplicitTop = 401
  end
end
