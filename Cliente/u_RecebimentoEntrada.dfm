object frmRecebimentoEntrada: TfrmRecebimentoEntrada
  Left = 331
  Top = 55
  Width = 779
  Height = 550
  Hint = 'Recebimento de entrada'
  Caption = 'Recebimento de Entrada'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClick = actFecharExecute
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
      ActionManager = actmngRecebimento
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
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
    Height = 407
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = pgctrlNotaChange
    object TabSheet1: TTabSheet
      Caption = 'Nota de Entrada'
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbgrdETitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPEDIDO'
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
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
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
  end
  object fcstbarStatus: TfcStatusBar
    Left = 0
    Top = 496
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 771
    Height = 56
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Data de Entrada'
    end
    object dtpckDtEntrada: TDateTimePicker
      Left = 8
      Top = 24
      Width = 96
      Height = 21
      Date = 38274.480751435190000000
      Time = 38274.480751435190000000
      TabOrder = 0
    end
  end
  object actmngRecebimento: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actRecebimento
            ImageIndex = 0
          end
          item
            Action = actFechar
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar1
      end>
    Images = imglstRDV
    Left = 336
    Top = 64
    StyleName = 'XP Style'
    object actRecebimento: TAction
      Category = 'Nota'
      Caption = 'Recebimento'
      Hint = 'Recebimento de Nota Fiscal de Entrada'
      ImageIndex = 0
      OnExecute = actRecebimentoExecute
    end
    object actFechar: TAction
      Category = 'Nota'
      Caption = '&Fechar'
      Hint = 'Fechar o m'#243'dulo'
      ImageIndex = 1
      OnExecute = actFecharExecute
    end
  end
  object imglstRDV: TImageList
    Left = 401
    Top = 65
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00ADADAD00ADADAD0052520000EFEF0000ADAD
      AD00ADADAD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A50052520000EFEF00008484
      0000A5A5A500A5A5A500A5A5A500A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50094949400949494009494940052520000EFEF00008484
      0000848400005252000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00000080000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF000000800000008000000080000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A005A5A5A005A5A5A0052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF000000800000008000FFFFFF00000080000000800000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00005252000084848400ADADAD00ADADAD00BDBDBD0052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000080008080800000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00005252000084840000A5A5A500ADADAD00ADADAD0052520000EFEF00005A5A
      5A00848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008000000000000000
      0000FFFFFF000000000000000000000000000000000084848400848484008484
      840052520000EFEF000084840000A5A5A500ADADAD0052520000EFEF0000BDBD
      BD00848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000080000000
      0000FFFFFF000000000000000000000000005252000084840000848400008484
      000084840000FFFF0000EFEF000084840000A5A5A50052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8000FFFFFF0000000000000000000000000052520000FFFF0000FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00EFEF00005252000052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000052520000525200005252
      000052520000FFFFCE00FFFF0000525200009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000052520000EFEF0000525200008C8C8C009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800000000000FFFFFF00000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      00005252000052520000848484008C8C8C008C8C8C0094949400FFFF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008C8C8C008C8C8C0094949400FFFF
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400848484008C8C8C008C8C8C009494
      9400FFFF00005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000100000000E007000000000000
      C003000000000000C303000000000000C183FC0100000000C0C3FC0100000000
      C043F00100000000C023F00100000000C033800100000000C013000100000000
      C003000100000000C003800100000000C003F00100000000E1C7F00100000000
      FC3FFC0100000000FFFFFC030000000000000000000000000000000000000000
      000000000000}
  end
end
