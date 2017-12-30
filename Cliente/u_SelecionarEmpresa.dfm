object frmSelecionarEmpresa: TfrmSelecionarEmpresa
  Left = 489
  Top = 38
  Caption = 'Selecionar Empresa'
  ClientHeight = 545
  ClientWidth = 653
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 32
    Width = 653
    Height = 493
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 411
    object TabSheet3: TTabSheet
      Caption = 'Selecionar Empresa'
      ExplicitHeight = 383
      object fcDBTreeView1: TfcDBTreeView
        Left = 0
        Top = 0
        Width = 645
        Height = 465
        DisableThemes = True
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        DataSourceFirst = dmEF.dsEmpresa
        DataSourceLast = dmEF.dsEmpresa
        DisplayFields.Strings = (
          '"NOMEFANTASIA"'
          '  ')
        LevelIndent = 19
        Images = ImageList3
        OnDblClick = fcDBTreeView1DblClick
        ExplicitTop = -2
      end
    end
  end
  object tmbManutTop1: TtmbManutTop
    Left = 0
    Top = 0
    Width = 653
    Height = 32
    AutoSize = True
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 649
      end>
    TtmbCria = True
    TtmbPreencheCombos = False
    TtmbDataSource = dmEF.dsEmpresa
    TtmbDmGsiCdsSQL = dmGsi.cdsSQL
    TtmbRetornoVisivel = False
    TtmbPesquisar = False
  end
  object fcStatusBar4: TfcStatusBar
    Left = 0
    Top = 525
    Width = 653
    Height = 20
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel0'
        Style = psHint
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '250'
      end>
    SimplePanel = False
    SizeGrip = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
    ExplicitTop = 443
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetPrior1
            Caption = '&Anterior'
            ImageIndex = 10
          end
          item
            Action = DataSetFirst1
            Caption = '&Primeiro'
            ImageIndex = 13
          end
          item
            Action = DataSetNext1
            Caption = 'P&r'#243'ximo'
            ImageIndex = 12
          end
          item
            Action = DataSetLast1
            Caption = #218'&ltimo'
            ImageIndex = 11
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = actFechar
                Caption = '&Fechar'
                ImageIndex = 1
              end>
            Caption = '&Arquivo'
          end
          item
            Items = <
              item
                Action = DataSetFirst1
                Caption = '&Primeiro'
                ImageIndex = 13
              end
              item
                Action = DataSetPrior1
                Caption = '&Anterior'
                ImageIndex = 10
              end
              item
                Action = DataSetNext1
                Caption = 'P&r'#243'ximo'
                ImageIndex = 12
              end
              item
                Action = DataSetLast1
                Caption = #218'&ltimo'
                ImageIndex = 11
              end
              item
                Action = DataSetInsert1
                Caption = '&Inserir'
              end
              item
                Action = DataSetDelete1
                Caption = '&Deletar'
              end
              item
                Action = DataSetEdit1
                Caption = '&Editar'
              end
              item
                Action = DataSetPost1
                Caption = '&Gravar'
              end
              item
                Action = DataSetCancel1
                Caption = '&Cancelar'
              end
              item
                Action = DataSetRefresh1
                Caption = 'A&tualizar'
              end>
            Caption = '&Tabela'
          end
          item
            Items = <
              item
                Action = EditCut1
                ImageIndex = 17
                ShortCut = 16472
              end
              item
                Action = EditCopy1
                ImageIndex = 1
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 2
                ShortCut = 16470
              end
              item
                Action = EditSelectAll1
                ShortCut = 16449
              end
              item
                Action = EditUndo1
                ImageIndex = 3
                ShortCut = 16474
              end
              item
                Action = EditDelete1
                ImageIndex = 4
                ShortCut = 46
              end>
            Caption = '&Editar'
          end
          item
            Items = <
              item
                Action = CustomizeActionBars1
              end>
            Caption = '&Ferramentas'
          end>
      end
      item
        Items = <
          item
            Action = DataSetFirst1
            Caption = '&Primeiro'
            ImageIndex = 14
          end
          item
            Action = DataSetPrior1
            Caption = '&Anterior'
            ImageIndex = 11
          end
          item
            Action = DataSetNext1
            Caption = 'P&r'#243'ximo'
            ImageIndex = 13
          end
          item
            Action = DataSetLast1
            Caption = #218'&ltimo'
            ImageIndex = 12
          end
          item
            Action = DataSetInsert1
            Caption = '&Inserir'
            ImageIndex = 8
          end
          item
            Action = DataSetDelete1
            Caption = '&Deletar'
            ImageIndex = 7
          end
          item
            Action = DataSetEdit1
            Caption = '&Editar'
            ImageIndex = 4
          end
          item
            Action = DataSetPost1
            Caption = '&Gravar'
            ImageIndex = 6
          end
          item
            Action = DataSetCancel1
            Caption = '&Cancelar'
            ImageIndex = 3
          end
          item
            Action = DataSetRefresh1
            Caption = 'A&tualizar'
            ImageIndex = 2
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = actFechar
                Caption = '&Fechar'
                ImageIndex = 1
              end>
            Caption = '&Arquivo'
          end
          item
            Items = <
              item
                Action = EditCut1
                ImageIndex = 18
                ShortCut = 16472
              end
              item
                Action = EditCopy1
                ImageIndex = 20
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 19
                ShortCut = 16470
              end
              item
                Action = EditSelectAll1
                ShortCut = 16449
              end
              item
                Action = EditUndo1
                ImageIndex = 21
                ShortCut = 16474
              end
              item
                Action = EditDelete1
                ImageIndex = 7
                ShortCut = 46
              end>
            Caption = '&Editar'
          end
          item
            Items = <
              item
                Action = DataSetFirst1
                Caption = '&Primeiro'
                ImageIndex = 14
              end
              item
                Action = DataSetPrior1
                Caption = '&Anterior'
                ImageIndex = 11
              end
              item
                Action = DataSetNext1
                Caption = 'P&r'#243'ximo'
                ImageIndex = 13
              end
              item
                Action = DataSetLast1
                Caption = #218'&ltimo'
                ImageIndex = 12
              end
              item
                Action = DataSetInsert1
                Caption = '&Inserir'
                ImageIndex = 8
              end
              item
                Action = DataSetDelete1
                Caption = '&Deletar'
                ImageIndex = 7
              end
              item
                Action = DataSetEdit1
                Caption = '&Editar'
                ImageIndex = 4
              end
              item
                Action = DataSetPost1
                Caption = '&Gravar'
                ImageIndex = 6
              end
              item
                Action = DataSetCancel1
                Caption = '&Cancelar'
                ImageIndex = 3
              end
              item
                Action = DataSetRefresh1
                Caption = 'A&tualizar'
                ImageIndex = 2
              end>
            Caption = '&Tabela'
          end
          item
            Items = <
              item
                Action = CustomizeActionBars1
              end>
            Caption = '&Ferramentas'
          end>
      end
      item
        Items = <
          item
            Action = Action2
            Caption = '&Relat'#243'rio'
            ImageIndex = 22
          end
          item
            Action = Action3
            Caption = '&Exportar'
            ImageIndex = 23
          end>
      end>
    Images = ImageList3
    Left = 468
    Top = 200
    StyleName = 'XP Style'
    object EditCut1: TEditCut
      Category = 'Editar'
      Caption = '&Recortar'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 18
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Editar'
      Caption = '&Copiar'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 20
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Editar'
      Caption = 'C&olar'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 19
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Editar'
      Caption = '&Seleciona Tudo'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Editar'
      Caption = '&Desfazer'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 21
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Editar'
      Caption = '&Apagar'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 7
      ShortCut = 46
    end
    object DataSetFirst1: TDataSetFirst
      Category = 'Tabela'
      Caption = 'Primeiro'
      ImageIndex = 14
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Tabela'
      Caption = 'Anterior'
      ImageIndex = 11
    end
    object DataSetNext1: TDataSetNext
      Category = 'Tabela'
      Caption = 'Pr'#243'ximo'
      ImageIndex = 13
    end
    object DataSetLast1: TDataSetLast
      Category = 'Tabela'
      Caption = #218'ltimo'
      ImageIndex = 12
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Tabela'
      Caption = 'Inserir'
      ImageIndex = 8
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Tabela'
      Caption = 'Deletar'
      ImageIndex = 7
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Tabela'
      Caption = 'Editar'
      ImageIndex = 4
    end
    object DataSetPost1: TDataSetPost
      Category = 'Tabela'
      Caption = 'Gravar'
      ImageIndex = 6
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Tabela'
      Caption = 'Cancelar'
      ImageIndex = 3
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Tabela'
      Caption = 'Atualizar'
      ImageIndex = 2
    end
    object CustomizeActionBars1: TCustomizeActionBars
      Category = 'Ferramentas'
      Caption = '&Customizar'
      CustomizeDlg.StayOnTop = False
    end
    object actFechar: TAction
      Category = 'Arquivo'
      Caption = 'Fechar'
      ImageIndex = 1
      OnExecute = actFecharExecute
    end
    object Action2: TAction
      Category = 'Ferramentas'
      Caption = 'Relat'#243'rio'
      ImageIndex = 22
    end
    object Action3: TAction
      Category = 'Ferramentas'
      Caption = 'Exportar'
      ImageIndex = 23
    end
    object actPesquisar: TAction
      Category = 'Tabela'
      Caption = 'Pesquisar'
      ImageIndex = 9
    end
  end
  object CustomizeDlg1: TCustomizeDlg
    ActionManager = actmngManutencao
    StayOnTop = False
    Left = 496
    Top = 200
  end
  object ImageList3: TImageList
    Height = 19
    Left = 440
    Top = 200
    Bitmap = {
      494C010102000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001300000001002000000000000013
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00525200005252000052520000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00ADADAD00ADADAD00ADADAD0052520000FFFF0000EFEF0000ADAD
      AD00ADADAD00ADADAD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50052520000FFFF0000EFEF00008484
      0000525200009494940094949400949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500A5A5A500A5A5A500A5A5
      A5009494940094949400949494009494940052520000FFFF0000EFEF00008484
      0000848400005252000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A0094949400949494009494940052520000FFFF0000EFEF00008484
      000084840000848400005A5A5A005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000A5A5A500ADADAD00ADADAD0052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000A5A5A500A5A5A500ADADAD0052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A500A5A5A500A5A5A50052520000FFFF0000EFEF00005A5A
      5A005A5A5A008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00ADAD
      AD0052520000A5A5A500A5A5A500A5A5A50052520000FFFF0000EFEF0000BDBD
      BD005A5A5A008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      84005252000052520000A5A5A500A5A5A50052520000FFFF0000EFEF00005A5A
      5A005A5A5A008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000052520000525200005252
      0000525200008484000052520000A5A5A50052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFF0000FFFFFF00000000000000
      00000000000000000000000000000000000052520000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000EFEF00008484000052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000052520000FFFF0000FFFFCE00FFFF
      CE00FFFFCE00FFFF0000FFFF00008484000052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052520000525200005252
      000052520000FFFF0000848400005252000052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005252000052520000949494008C8C8C009494940052520000FFFF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052520000848484008C8C8C008C8C8C00949494009494940052520000EFEF
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525200008C8C8C00848484008C8C8C008C8C8C009494940094949400FFFF
      0000EFEF00008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008C8C8C008C8C8C008C8C8C009494
      940052520000FFFF000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFF800100000000FFFF000000000000
      FFFF000000000000FFFF00000000000083E000000000000083E0F80000000000
      83E0F800000000008360F80000000000EE3BC00000000000EC1B800000000000
      E003800000000000FC1F000000000000FE3F000000000000FF7F800000000000
      FC1FF00000000000FC1FF00000000000FC1FF00000000000FC1FF80100000000
      FFFFF8030000000000000000000000000000000000000000000000000000}
  end
end
