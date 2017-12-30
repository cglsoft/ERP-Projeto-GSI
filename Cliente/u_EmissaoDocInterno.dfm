object frmEmissaoDocInterno: TfrmEmissaoDocInterno
  Left = 211
  Top = 99
  Caption = 'Documento Interno'
  ClientHeight = 523
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 771
    Height = 33
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 590
      end
      item
        Break = False
        Control = tmbajtGeral
        ImageIndex = -1
        MinHeight = 24
        Width = 175
      end>
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 577
      Height = 26
      ActionManager = actmngTransfConsumo
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
    object tmbajtGeral: tPanel1
      Left = 601
      Top = 1
      Width = 70
      Height = 24
      AutoSize = True
      TabOrder = 1
      tmbDBGrid = dbgrdE
      tmbCria = True
      tmbAjusta = True
    end
  end
  object pgctrlNota: TPageControl
    Left = 0
    Top = 89
    Width = 771
    Height = 414
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = pgctrlNotaChange
    ExplicitHeight = 407
    object TabSheet1: TTabSheet
      Caption = 'Nota de Entrada'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 208
        Width = 763
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter3: TSplitter
        Left = 0
        Top = 211
        Width = 763
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object dbgrdE: TDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 208
        Align = alTop
        Color = clCream
        DataSource = dmEF.dsPde
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdEDrawColumnCell
        OnDblClick = dbgrdEDblClick
        OnTitleClick = dbgrdETitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDEID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPEDIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTIDADEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOIMPORTACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOVIMENTAESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAEMISSAONFEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELODOCFISCALID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPREVISAO'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_MODELODOCFISCAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAEMISSAONFSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPONOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEPID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGLAUFID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTRIBUINTEICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NATUREZAOPID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOOBSERVACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRANSPORTADORID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMETRANSPORTADOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLACAVEICULO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODALIDADEFRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRSEGURO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESPESAACESSORIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMBQTDVOLUMES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMBNUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMBMARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMBESPECIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMBPESOBRUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMBPESOLIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALCOFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALPIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALCREDCOFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALCREDPIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALBASEICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALISENTASICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALOUTRASICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALBASEIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALISENTASIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALOUTRASIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALNOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 214
        Width = 763
        Height = 165
        Align = alClient
        Color = clCream
        DataSource = dmEF.dsPdeItem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAICMS'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOPRODUTO'
            Width = 221
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPRECOUNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPRECOTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAEMISSAONFSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMPENHO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADEEMPENHO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RETORNO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDRETORNA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRBASEICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRISENTASICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLROUTRASICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PORCREDUCAOICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITTRIBUTARIAESTADUAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTACOFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCOFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCREDCOFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAPIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCREDPIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRBASEIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRISENTASIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLROUTRASIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITTRIBUTARIAFEDERAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINICIALIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFINALIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODINCENTIVADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NATUREZAOPID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAONOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOOBSERVACAO'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Nota Fiscal de Sa'#237'da'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter2: TSplitter
        Left = 0
        Top = 208
        Width = 763
        Height = 5
        Cursor = crVSplit
        Align = alTop
      end
      object dbgrdS: TDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 208
        Align = alTop
        Color = clCream
        DataSource = dmEF.dsPds
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgrdEDblClick
        OnTitleClick = dbgrdSTitleClick
      end
      object dbgrdSItem: TDBGrid
        Left = 0
        Top = 213
        Width = 763
        Height = 166
        Align = alClient
        Color = clCream
        DataSource = dmEF.dsPdsItem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object fcstbarStatus: TfcStatusBar
    Left = 0
    Top = 503
    Width = 771
    Height = 20
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        Name = 'UserName'
        Style = psHint
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '100'
      end>
    SimplePanel = False
    SizeGrip = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
    ExplicitTop = 496
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 771
    Height = 56
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Data de Emiss'#227'o'
    end
    object Label3: TLabel
      Left = 112
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Data de Entrada'
    end
    object Label4: TLabel
      Left = 236
      Top = 8
      Width = 167
      Height = 16
      Caption = 'Pr'#243'ximo N'#186' de Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 479
      Top = 35
      Width = 82
      Height = 13
      Caption = 'Entradas comuns'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object shpComum: TShape
      Left = 456
      Top = 37
      Width = 20
      Height = 11
      Brush.Color = 14654496
    end
    object shpFornecedor: TShape
      Left = 569
      Top = 37
      Width = 20
      Height = 11
      Brush.Color = 8684799
    end
    object Label8: TLabel
      Left = 597
      Top = 35
      Width = 110
      Height = 13
      Caption = 'Entradas Fornecedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtpckDtEmissao: TDateTimePicker
      Left = 8
      Top = 24
      Width = 88
      Height = 21
      Date = 38274.480633796290000000
      Time = 38274.480633796290000000
      TabOrder = 0
    end
    object dtpckDtEntrada: TDateTimePicker
      Left = 112
      Top = 24
      Width = 96
      Height = 21
      Date = 38274.480751435190000000
      Time = 38274.480751435190000000
      TabOrder = 1
    end
    object mktNrNF: TMaskEdit
      Left = 236
      Top = 24
      Width = 85
      Height = 22
      EditMask = '!999999;0;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
    end
    object chkImpDtEntrada: TCheckBox
      Left = 456
      Top = 13
      Width = 249
      Height = 17
      Caption = 'Recebimento posterior de mercadorias?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = chkImpDtEntradaClick
    end
  end
  object actmngTransfConsumo: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actImprimirNota
            ImageIndex = 0
          end
          item
            Action = actAlterarPedido
            ImageIndex = 3
          end
          item
            Action = actAtualizarNrNota
            ImageIndex = 1
          end
          item
            Action = actFechar
            ImageIndex = 2
          end>
        ActionBar = ActionToolBar1
      end>
    Images = imglstTransfConsumo
    Left = 336
    Top = 64
    StyleName = 'XP Style'
    object actImprimirNota: TAction
      Category = 'Nota'
      Caption = 'Emiss'#227'o Documento Interno'
      Hint = 'Imprimir nota fiscal'
      ImageIndex = 0
      OnExecute = actImprimirNotaExecute
    end
    object actAlterarPedido: TAction
      Category = 'Nota'
      Caption = 'Alterar Pedido'
      Hint = 'Alterar o Pedido antes da emiss'#227'o da Nota Fiscal'
      ImageIndex = 3
      OnExecute = actAlterarPedidoExecute
    end
    object actAtualizarNrNota: TAction
      Category = 'Nota'
      Caption = 'Atualizar N'#186' Documento'
      Hint = 'Atualizar N'#186' Nota Fiscal para o n'#250'mero corrente digitado'
      ImageIndex = 1
      OnExecute = actAtualizarNrNotaExecute
    end
    object actFechar: TAction
      Category = 'Nota'
      Caption = '&Fechar'
      Hint = 'Fechar o m'#243'dulo'
      ImageIndex = 2
      OnExecute = actFecharExecute
    end
  end
  object imglstTransfConsumo: TImageList
    Left = 417
    Top = 65
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00ADADAD00ADADAD0052520000EFEF0000ADAD
      AD00ADADAD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A50052520000EFEF00008484
      0000A5A5A500A5A5A500A5A5A500A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C0000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50094949400949494009494940052520000EFEF00008484
      0000848400005252000084848400848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008080
      80000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FFFF00C0C0C000C0C0
      C00000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800080808000C0C0C000C0C0
      C00000000000C0C0C0000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFFFF00FFFFFF000080
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000005A5A5A005A5A5A005A5A5A0052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF000080
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00005252000084848400ADADAD00ADADAD00BDBDBD0052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C00000000000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00005252000084840000A5A5A500ADADAD00ADADAD0052520000EFEF00005A5A
      5A00848400005A5A5A00ADADAD000000000000000000FFFFFF0080808000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000FFFF008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C0000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000800000FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400848484008484
      840052520000EFEF000084840000A5A5A500ADADAD0052520000EFEF0000BDBD
      BD00848400005A5A5A00ADADAD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF0000800000FFFFFF00FFFFFF000080000000800000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000005252000084840000848400008484
      000084840000FFFF0000EFEF000084840000A5A5A50052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000FFFFFF0080808000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000800000008000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
      FF00FFFFFF00FFFFFF00000000000000000052520000FFFF0000FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00EFEF00005252000052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000052520000525200005252
      000052520000FFFFCE00FFFF0000525200009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052520000EFEF0000525200008C8C8C009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF0080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00005252000052520000848484008C8C8C008C8C8C0094949400FFFF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008C8C8C008C8C8C0094949400FFFF
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400848484008C8C8C008C8C8C009494
      9400FFFF00005A5A5A0000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFC0010001EABFC007C0010000FF9F
      8003C0010000FF8F0001C0010000FF870001C001FC01FF970001C001FC0100C3
      0000C001F00100CB0000C001F00104E18000C00180010001C000C00100010000
      E001C00100010001E007C0018001000FF007C001F001000FF003C003F001F00F
      F803C007FC01F00FFFFFC00FFC03F00F00000000000000000000000000000000
      000000000000}
  end
end
