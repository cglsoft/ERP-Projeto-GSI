object frmProcessoItem: TfrmProcessoItem
  Left = 142
  Top = 24
  Caption = 'Manuten'#231#227'o Cadastral dos Itens do Processo'
  ClientHeight = 519
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 561
    Height = 432
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 387
    object TabSheet1: TTabSheet
      Caption = 'Manuten'#231#227'o Cadastral'
      ExplicitHeight = 359
      object tmbdtinspCadastro: TtmbDataInspector
        Left = 0
        Top = 0
        Width = 553
        Height = 404
        DisableThemes = False
        Align = alClient
        TabOrder = 0
        DataSource = dmIT.dsProcessoItem
        Items = <
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'EMPRESAID'
            Caption = 'EMPRESAID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'ITEMID'
            Caption = 'ITEMID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'REGANVISA'
            Caption = 'REGANVISA'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'PRODUTOID'
            Caption = 'PRODUTOID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'PARTNUMBERID'
            Caption = 'PARTNUMBERID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'PARTNUMBERFABID'
            Caption = 'PARTNUMBERFABID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DESCRICAOINGLES'
            Caption = 'DESCRICAOINGLES'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DESCRICAOPORTUGUES'
            Caption = 'DESCRICAOPORTUGUES'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'GRUPOID'
            Caption = 'GRUPOID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'L_SIGLAGRUPO'
            Caption = 'L_SIGLAGRUPO'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'QTDPEDIDA'
            Caption = 'QTDPEDIDA'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'QTDLIBERADA'
            Caption = 'QTDLIBERADA'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'VLRFOBUS'
            Caption = 'VLRFOBUS'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATACONVERSAO'
            Caption = 'DATACONVERSAO'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'VLRYEN'
            Caption = 'VLRYEN'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAPREVISAO'
            Caption = 'DATAPREVISAO'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAINSTRENVEMB'
            Caption = 'DATAINSTRENVEMB'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAEMBARQUE'
            Caption = 'DATAEMBARQUE'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATACHEGADA'
            Caption = 'DATACHEGADA'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAAUTORIZLI'
            Caption = 'DATAAUTORIZLI'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATASOLICLI'
            Caption = 'DATASOLICLI'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'INVOICEID'
            Caption = 'INVOICEID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'NUMCONHECEMBARQUE'
            Caption = 'NUMCONHECEMBARQUE'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'SERIEID'
            Caption = 'SERIEID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'MODELOID'
            Caption = 'MODELOID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'PEDIDOORIGINAL'
            Caption = 'PEDIDOORIGINAL'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAINSTALEQUIP'
            Caption = 'DATAINSTALEQUIP'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAFALHAEQUIP'
            Caption = 'DATAFALHAEQUIP'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'NCMID'
            Caption = 'NCMID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DECLARACAOID'
            Caption = 'DECLARACAOID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'L_DIID'
            Caption = 'L_DIID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'L_NFEID'
            Caption = 'L_NFEID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'L_DATAEMISSAONFEID'
            Caption = 'L_DATAEMISSAONFEID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'L_DATAENTRADANFEID'
            Caption = 'L_DATAENTRADANFEID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'PRIORIDADE'
            Caption = 'PRIORIDADE'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'TSBREFID'
            Caption = 'TSBREFID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'NOMEUNIDADE'
            Caption = 'NOMEUNIDADE'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'RETORNAPECADEF'
            Caption = 'RETORNAPECADEF'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATADEVOLUCAO'
            Caption = 'DATADEVOLUCAO'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAPREVRETORNO'
            Caption = 'DATAPREVRETORNO'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'DATAEMBTOKIO'
            Caption = 'DATAEMBTOKIO'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'USUARIO'
            Caption = 'USUARIO'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'PROCESSOID'
            Caption = 'PROCESSOID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'TIPOPROCESSOID'
            Caption = 'TIPOPROCESSOID'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'L_SIGLA'
            Caption = 'L_SIGLA'
            WordWrap = False
          end
          item
            DataSource = dmIT.dsProcessoItem
            DataField = 'sqldtsProcessoItemSerie'
            Caption = 'sqldtsProcessoItemSerie'
            WordWrap = False
          end>
        CaptionWidth = 219
        Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert, ovTabToVisibleOnly]
        PaintOptions.AlternatingRowRegions = [arrFixedColumns]
        PaintOptions.BackgroundOptions = [coFillDataCells, coBlendFixedColumn, coBlendActiveRecord, coBlendAlternatingRow]
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        LineStyleCaption = ovDottedLine
        LineStyleData = ovDottedLine
        CaptionIndent = 16
        OnItemChanged = tmbdtinspCadastroItemChanged
        OnButtonClick = tmbdtinspCadastroButtonClick
        ExplicitHeight = 359
      end
    end
  end
  object tmbEdicaoBottom1: TtmbEdicaoBottom
    Left = 0
    Top = 487
    Width = 561
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
        MinHeight = 26
        Width = 354
      end
      item
        Break = False
        ImageIndex = -1
        MinHeight = 28
        Width = 49
      end>
    TtmbCria = True
    TtmbFormulario = Owner
    TtmbCloseComando = True
    ExplicitTop = 442
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 467
    Width = 561
    Height = 20
    Panels = <
      item
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '300'
      end
      item
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel1'
        Style = psHint
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    SimplePanel = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
    ExplicitTop = 422
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 561
    Height = 35
    AutoSize = True
    Bands = <
      item
        BorderStyle = bsSingle
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 165
      end
      item
        BorderStyle = bsSingle
        Break = False
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 31
        Width = 394
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 176
      Top = 2
      Width = 381
      Height = 31
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      Spacing = 0
    end
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 3
      Width = 152
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 152
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Caption = '&Arquivo'
          end
          item
            Caption = '&Tabela'
          end
          item
            Caption = '&Editar'
          end
          item
            Caption = '&Ferramentas'
          end>
      end
      item
      end
      item
        Items = <
          item
            Caption = '&Arquivo'
          end
          item
            Caption = '&Editar'
          end
          item
            Caption = '&Tabela'
          end
          item
            Caption = '&Ferramentas'
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actCadProduto
            Caption = '&Cadastrar Produto'
            ImageIndex = 23
          end>
      end
      item
        Items = <
          item
            Action = actCadProduto
            Caption = '&Cadastrar Produto'
            ImageIndex = 23
          end>
      end
      item
        Items = <
          item
            Action = actCadProduto
            Caption = '&Cadastrar Produto'
            ImageIndex = 0
          end
          item
            Action = Action1
            Caption = 'C&adastrar S'#233'rie do Produto'
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 516
    Top = 200
    StyleName = 'XP Style'
    object actCadProduto: TAction
      Category = 'Ferramentas'
      Caption = 'Cadastrar Produto'
      ImageIndex = 0
      OnExecute = actCadProdutoExecute
    end
    object Action1: TAction
      Category = 'Ferramentas'
      Caption = 'Cadastrar S'#233'rie do Produto'
      ImageIndex = 1
      OnExecute = Action1Execute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 488
    Top = 200
    Bitmap = {
      494C010102000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001300000001001000000000008009
      0000000000000000000000000000000000000000000000000000F439F439F439
      F439F439F439F439F439F439F439F439712D00000000000000000000EF3DCC14
      5F4A3F673F673F67E07F3F67CC14993199310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F439FC5EFE5E
      FD5AFD5AFD5AFD5AFD5AFD5AFD5ADC4A712D000000000000EF3DCC145F4A3F67
      E07FF97F3F673F67F97F3F679931CC1499310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005842BD73FF7B
      DF77DF77DF77DF73BF6FBF6FBF6F5F67B23100000000EF3D99313F67E07F3F67
      3F67EF3DEF3DF97F3F67F97F3F67CC141F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005842BD77FF7B
      FF7BDF77DF77DF73BF6FBF6FBF6F5F67B3350000EF3D5F4A3F67E07FF97FEF3D
      EF3D3F67E07F3F67E07F3F67F97F9931007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F439F439F439F4397942BD77E30D
      6A2EFF7BDF77DF77DF73BF6FBF6F5F67B33500000000E07F3F673F67EF3D3F67
      F97F3F67EF3DEF3DF97FF97F3F67F97FCC140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F439FC5EFE5EFD5A7942BD77E30D
      C5266A2EFF7BDF77DF73DF73DF733F67B335000000000000FF7FFF7FFF7FE07F
      EF3DEF3DF97FF97FF97F3F67F97F3F6799310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000373E9C73DF776E3AE30DE30DE30D
      2633C5266A2EFF7BDF77DF77DF731F63D3350000000000003F67FF7FFF7F830C
      EF3DF97FF97FEF3DEF3DF97F3F67F97F3F670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005842BD734A2A410A052705272637
      683B893F693F061ADF77DF77DF77FF5AD33900000000000000003F6799319931
      830CEF3DEF3DF97FF97F3F67F97F3F67F97F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005842D146410E0527010E010E2733
      8943AA432412FF7B9F6BFF5EBF569F52D439000000000000000099313F675F4A
      9931830CEF3DEF3DEF3DEF3DFF7FFF7F3F670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000794224168316010EBB46FF7FE30D
      2837281AFF7BFF7B1C579C4E7C4A7C46D43900000000000099313F673F675F4A
      5F4A9931830CEF3DF97FFF7FF97FFF7FF97F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000794242124826FF7FBB46DE7B4822
      D032FF7FFF7FFF7F163A163A163A163AF4390000000099313F673F673F675F4A
      5F4A5F4A9931830CEF3DFF7FFF7FFF7F3F670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009942010EFF7FFF7FDC46FF7F713E
      FF7FFF7FFF7FFF7F163AFF2E9C3679425D63000099313F67FF7F3F673F675F4A
      9931993199319931830CEF3DFF7FC700F97F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A46E30DFF7FFF7FDC46FF7FFF7F
      FF7FFF7FFF7FFF7F163ABC427A427D6B00000000CC14CC14CC143F673F675F4A
      9931830C830C830C830C830CFF7FFF7F3F670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A46902A354FFF7FDC46FF7BFF7F
      FF7FFF7FFF7FFF7F163A9A427D6B0000000000000000000000003F673F675F4A
      9931830CCC14CC14CC14CC143F673F67FF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB46FF7FF746FF7FFD4ABB42BB42
      BB42BB42BB42BB42163A7E6B000000000000000000005F4A3F673F67FF7F5F4A
      9931830CCC14007C007CFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DC46FF7FFF7FFF7FFF7FFF7FFF7F
      163AFF2E9C3679425D630000000000000000000000009931FF7FFF7F3F675F4A
      9931830CCC140000FF7FFF7FFF7F007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DC46FF7FFF7FFF7FFF7FFF7FFF7F
      163ABC427A427D6B000000000000000000000000000099315F4A5F4A5F4A5F4A
      9931830CCC14000000001F001F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DC46FF7FFF7FFF7FFF7FFF7FFF7F
      163A9A427D6B0000000000000000000000000000000099319931993199319931
      830CCC14EF3D3F67000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FD4ABB42BB42BB42BB42BB42BB42
      163A7E6B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00F000F80000000000F000E00000000000
      F000C00000000000F0008000000000000000C000000000000000E00000000000
      0000E000000000000000F000000000000000F000000000000000E00000000000
      0000C00000000000000080000000000000018000000000000003F00000000000
      0007C00000000000000FC02000000000001FC03300000000003FC01F00000000
      007FFFFF0000000000000000000000000000000000000000000000000000}
  end
end
