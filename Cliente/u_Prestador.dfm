object frmPrestador: TfrmPrestador
  Left = 25
  Top = -5
  Width = 697
  Height = 566
  Caption = 'frmPrestador'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 40
    Width = 78
    Height = 13
    Caption = 'PRESTADORID'
  end
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 689
    Height = 222
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label11: TLabel
      Left = 8
      Top = 7
      Width = 57
      Height = 13
      Caption = 'Prestador Id'
    end
    object Label2: TLabel
      Left = 106
      Top = 7
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label10: TLabel
      Left = 543
      Top = 7
      Width = 47
      Height = 13
      Caption = 'Cpf. Cnpf.'
      FocusControl = DBEdit10
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 21
      Width = 434
      Height = 21
      DataField = 'NOME'
      DataSource = dmRS.dsPrestador
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 43
      Width = 401
      Height = 173
      Caption = 'Endere'#231'o de Cadastro'
      TabOrder = 1
      object Label12: TLabel
        Left = 6
        Top = 16
        Width = 35
        Height = 13
        Caption = 'CEP ID'
      end
      object Label13: TLabel
        Left = 216
        Top = 16
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit11
      end
      object Label14: TLabel
        Left = 6
        Top = 40
        Width = 64
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit12
      end
      object Label15: TLabel
        Left = 6
        Top = 64
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label18: TLabel
        Left = 6
        Top = 107
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit18
      end
      object Label19: TLabel
        Left = 6
        Top = 131
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit19
      end
      object Label20: TLabel
        Left = 350
        Top = 138
        Width = 14
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit20
      end
      object DBEdit11: TDBEdit
        Left = 264
        Top = 16
        Width = 130
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = dmRS.dsPrestador
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 80
        Top = 40
        Width = 314
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = dmRS.dsPrestador
        TabOrder = 2
      end
      object DBEdit18: TDBEdit
        Left = 80
        Top = 112
        Width = 316
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = dmRS.dsPrestador
        TabOrder = 4
      end
      object DBEdit19: TDBEdit
        Left = 80
        Top = 138
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = dmRS.dsPrestador
        TabOrder = 5
      end
      object DBEdit20: TDBEdit
        Left = 366
        Top = 138
        Width = 30
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SIGLAUFID'
        DataSource = dmEF.dsEntidade
        TabOrder = 6
      end
      object DBMemo3: TDBMemo
        Left = 80
        Top = 65
        Width = 316
        Height = 43
        DataField = 'ENDERECO'
        DataSource = dmRS.dsPrestador
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object wwDBComboDlg4: TwwDBComboDlg
        Left = 80
        Top = 15
        Width = 113
        Height = 20
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        DataField = 'CEPID'
        DataSource = dmRS.dsPrestador
        TabOrder = 0
        WordWrap = False
        UnboundDataType = wwDefault
      end
    end
    object DBEdit10: TDBEdit
      Left = 541
      Top = 21
      Width = 140
      Height = 21
      DataField = 'CPFCNPJ'
      DataSource = dmRS.dsPrestador
      TabOrder = 3
    end
    object GroupBox4: TGroupBox
      Left = 412
      Top = 43
      Width = 271
      Height = 173
      Caption = ' Dados Prestador '
      TabOrder = 2
      object Label9: TLabel
        Left = 6
        Top = 27
        Width = 99
        Height = 13
        Caption = 'Inscr. Pref. Municipal'
      end
      object Label16: TLabel
        Left = 6
        Top = 51
        Width = 92
        Height = 13
        Caption = 'Inscr. '#211'rg'#227'o Classe'
      end
      object Label17: TLabel
        Left = 6
        Top = 76
        Width = 54
        Height = 13
        Caption = 'Inscr. INSS'
      end
      object Label22: TLabel
        Left = 6
        Top = 121
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label23: TLabel
        Left = 6
        Top = 147
        Width = 17
        Height = 13
        Caption = 'Fax'
      end
      object Label24: TLabel
        Left = 6
        Top = 96
        Width = 46
        Height = 13
        Caption = 'Inscr. PIS'
      end
      object DBEdit8: TDBEdit
        Left = 111
        Top = 20
        Width = 140
        Height = 21
        DataField = 'INSCRPREFMUNICIPAL'
        DataSource = dmRS.dsPrestador
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 111
        Top = 45
        Width = 140
        Height = 21
        DataField = 'INSCRORGAOCLASSE'
        DataSource = dmRS.dsPrestador
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 111
        Top = 70
        Width = 140
        Height = 21
        DataField = 'INSCRINSS'
        DataSource = dmRS.dsPrestador
        TabOrder = 2
      end
      object DBEdit14: TDBEdit
        Left = 111
        Top = 120
        Width = 140
        Height = 21
        DataField = 'TELEFONE'
        DataSource = dmRS.dsPrestador
        TabOrder = 4
      end
      object DBEdit15: TDBEdit
        Left = 111
        Top = 144
        Width = 140
        Height = 21
        DataField = 'FAX'
        DataSource = dmRS.dsPrestador
        TabOrder = 5
      end
      object DBEdit16: TDBEdit
        Left = 112
        Top = 95
        Width = 138
        Height = 21
        DataField = 'INSCRPIS'
        DataSource = dmRS.dsPrestador
        TabOrder = 3
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 689
    Height = 31
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        MinHeight = 27
        Width = 685
      end>
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 672
      Height = 27
      UseSystemFont = False
      ActionManager = actmngPrestador
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = 15921906
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15921906
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Spacing = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 7
    Top = 52
    Width = 94
    Height = 21
    DataField = 'PRESTADORID'
    DataSource = dmRS.dsPrestador
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 253
    Width = 689
    Height = 228
    Align = alClient
    BiDiMode = bdRightToLeft
    Caption = ' Recebimentos pelo Prestador de outras Empresas  '
    ParentBiDiMode = False
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 618
      Height = 211
      Align = alClient
      Color = clCream
      DataSource = dmRS.dsPrestadorReceb
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRESTADORID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEMID'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAEXECUCAO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRSERVICO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRRETIDO'
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
    object tmbEdtLstPrestador: TtmbEdicaoLista
      Left = 620
      Top = 15
      Width = 67
      Height = 211
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
      TtmbClientDataSet = dmRS.cdsPrestadorReceb
      TtmbVertical = True
      TtmbTamMax = False
      TtmbDataSource = dmRS.dsPrestadorReceb
      TtmbFontDefaut = False
      TtmbDesativaInserir = False
      TtmbDireito = #205'tens Prestador'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 481
    Width = 689
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 4
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 689
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
          Width = 489
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 42
        end>
      TtmbCria = True
      TtmbClientDataSet = dmRS.cdsPrestador
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 513
    Width = 689
    Height = 19
    Panels = <>
  end
  object actmngPrestador: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = Action1
            Caption = '&Exportar Prestador'
            ImageIndex = 0
          end
          item
            Action = Action2
            Caption = 'E&xportar Servi'#231'os'
            ImageIndex = 0
          end
          item
            Action = Fechar
            Caption = '&Fechar'
            ImageIndex = 1
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ImageList1
    Left = 576
    Top = 224
    StyleName = 'XP Style'
    object Action1: TAction
      Category = 'Exportar'
      Caption = 'Exportar Prestador'
      ImageIndex = 0
    end
    object Action2: TAction
      Category = 'Exportar'
      Caption = 'Exportar Servi'#231'os'
      ImageIndex = 0
    end
    object Fechar: TAction
      Category = 'Exportar'
      Caption = 'Fechar'
      ImageIndex = 1
    end
  end
  object ImageList1: TImageList
    Left = 648
    Top = 224
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      00000000000000000000000000000000000000000000BD000000BD000000BD00
      0000BD000000000000000000000000000000000000000000000000000000BDBD
      0000000000000000000000000000000000005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A0094949400949494009494940052520000FFFF0000EFEF00008484
      000084840000848400005A5A5A005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF000000
      00007B7B7B0000000000000000000000000000000000BDBD000000000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A500ADADAD00ADADAD0052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B0000000000BDBD000000000000FFFF00000000
      000000000000BD00000000000000000000000000000000000000000000000000
      000000000000A5A5A500A5A5A500ADADAD0052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF000000
      00007B7B7B007B7B7B0000000000BDBD000000000000FFFF0000FFFF00000000
      0000FFFFFF00BD00000000000000000000000000000000000000000000000000
      000000000000A5A5A500A5A5A500A5A5A50052520000FFFF0000EFEF00005A5A
      5A005A5A5A008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF0000000000BDBD000000000000FFFF0000FFFF0000000000000000
      000000000000BD00000000000000000000000000000000000000ADADAD00ADAD
      AD0052520000A5A5A500A5A5A500A5A5A50052520000FFFF0000EFEF0000BDBD
      BD005A5A5A008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF000000
      00007B7B7B000000000000000000FFFF0000FFFF000000000000FFFF00000000
      000000000000BD00000000000000000000000000000052520000525200005252
      0000525200008484000052520000A5A5A50052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF000000000000FFFFFF0000000000FFFF
      000000000000BD000000000000000000000052520000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000EFEF00008484000052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF000000
      00007B7B7B0000000000000000000000000000000000FFFFFF00000000000000
      000000000000BD000000000000000000000052520000FFFF0000FFFFCE00FFFF
      CE00FFFFCE00FFFF0000FFFF00008484000052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BD00000000000000000000000000000052520000525200005252
      000052520000FFFF0000848400005252000052520000FFFF0000EFEF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00BD00
      0000BD000000FFFFFF00BD000000BD000000BD000000FFFFFF00BD000000BD00
      0000FFFFFF00BD00000000000000000000000000000000000000000000000000
      00005252000052520000949494008C8C8C009494940052520000FFFF00008484
      0000848400008484000084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD000000BD00
      0000BD000000BD000000BD000000BD000000BD000000BD000000BD000000BD00
      0000BD000000BD00000000000000000000000000000000000000000000000000
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
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF800100000000FFFF000000000000
      FFE700000000000080030000000000008005F800000000008003F80000000000
      8003F80000000000800BC0000000000080038000000000008003000000000000
      800300000000000080038000000000008003F000000000008003F00000000000
      FFFFF80100000000FFFFF8030000000000000000000000000000000000000000
      000000000000}
  end
end
