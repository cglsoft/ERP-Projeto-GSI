object frmPDEItem: TfrmPDEItem
  Left = 40
  Top = 8
  ActiveControl = wwDBComboDlg3
  Caption = 'Item do Pedido de Entrada'
  ClientHeight = 365
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel8: TPanel
    Left = 0
    Top = 346
    Width = 716
    Height = 19
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object StatusBar: TStatusBar
      Left = 0
      Top = 0
      Width = 716
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
  end
  object Panel9: TPanel
    Left = 0
    Top = 314
    Width = 716
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 716
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
          Width = 471
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 87
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsPdeItem
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 716
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 716
      end>
    EdgeBorders = []
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 703
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 703
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 29
    Width = 716
    Height = 285
    Align = alClient
    Caption = 'Dados do Produto'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 176
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Produto ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 57
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit4
    end
    object Label8: TLabel
      Left = 84
      Top = 57
      Width = 82
      Height = 13
      Caption = 'Vlr Pre'#231'o Unit'#225'rio'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 198
      Top = 57
      Width = 73
      Height = 13
      Caption = 'Vlr. Pre'#231'o Total'
      FocusControl = DBEdit11
    end
    object Label1: TLabel
      Left = 222
      Top = 105
      Width = 70
      Height = 13
      Caption = 'Vlr. Base ICMS'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 222
      Top = 129
      Width = 67
      Height = 13
      Caption = 'Al'#237'quota ICMS'
      FocusControl = DBEdit3
    end
    object Label6: TLabel
      Left = 222
      Top = 153
      Width = 40
      Height = 13
      Caption = 'Vlr ICMS'
      FocusControl = DBEdit5
    end
    object Label10: TLabel
      Left = 222
      Top = 177
      Width = 79
      Height = 13
      Caption = 'Vlr Isentas ICMS'
      FocusControl = DBEdit16
    end
    object Label15: TLabel
      Left = 222
      Top = 201
      Width = 80
      Height = 13
      Caption = 'Vlr. Outras ICMS'
      FocusControl = DBEdit17
    end
    object Label16: TLabel
      Left = 222
      Top = 225
      Width = 92
      Height = 13
      Caption = '(%) Redu'#231#227'o ICMS'
      FocusControl = DBEdit18
    end
    object Label17: TLabel
      Left = 222
      Top = 246
      Width = 69
      Height = 26
      Caption = 'Situa'#231#227'o Trib. Estadual'
      FocusControl = dbedtSTE
      WordWrap = True
    end
    object Label18: TLabel
      Left = 470
      Top = 105
      Width = 59
      Height = 13
      Caption = 'Vlr. Base IPI'
      FocusControl = DBEdit20
    end
    object Label19: TLabel
      Left = 470
      Top = 129
      Width = 56
      Height = 13
      Caption = 'Al'#237'quota IPI'
      FocusControl = DBEdit21
    end
    object Label20: TLabel
      Left = 470
      Top = 153
      Width = 29
      Height = 13
      Caption = 'Vlr IPI'
      FocusControl = DBEdit22
    end
    object Label21: TLabel
      Left = 470
      Top = 177
      Width = 72
      Height = 13
      Caption = 'Vlr. Isentas IPI'
      FocusControl = DBEdit23
    end
    object Label22: TLabel
      Left = 470
      Top = 201
      Width = 69
      Height = 13
      Caption = 'Vlr. Outras IPI'
      FocusControl = DBEdit24
    end
    object Label23: TLabel
      Left = 470
      Top = 225
      Width = 37
      Height = 13
      Caption = 'Tipo IPI'
      FocusControl = DBEdit25
    end
    object Label26: TLabel
      Left = 470
      Top = 249
      Width = 80
      Height = 13
      Caption = 'Sit. Trib. Federal'
      FocusControl = DBEdit26
    end
    object Label2: TLabel
      Left = 6
      Top = 105
      Width = 35
      Height = 13
      Caption = 'Vlr. PIS'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 6
      Top = 129
      Width = 58
      Height = 13
      Caption = 'Al'#237'quota PIS'
      FocusControl = DBEdit6
    end
    object Label9: TLabel
      Left = 6
      Top = 153
      Width = 49
      Height = 13
      Caption = 'Vlr. Cofins'
      FocusControl = DBEdit7
    end
    object Label12: TLabel
      Left = 6
      Top = 174
      Width = 39
      Height = 26
      Caption = 'Al'#237'quota COFINS'
      FocusControl = DBEdit8
      WordWrap = True
    end
    object Label27: TLabel
      Left = 6
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Empresa ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 84
      Top = 19
      Width = 46
      Height = 13
      Caption = 'Pedido ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object wwDBComboDlg3: TwwDBComboDlg
      Left = 174
      Top = 31
      Width = 77
      Height = 20
      Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
      OnCustomDlg = wwDBComboDlg3CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'PRODUTOID'
      DataSource = dmEF.dsPdeItem
      TabOrder = 2
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit9: TDBEdit
      Left = 256
      Top = 31
      Width = 457
      Height = 20
      Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'DESCRICAOPRODUTO'
      DataSource = dmEF.dsPdeItem
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 6
      Top = 73
      Width = 65
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = dmEF.dsPdeItem
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 84
      Top = 73
      Width = 113
      Height = 21
      DataField = 'VLRPRECOUNITARIO'
      DataSource = dmEF.dsPdeItem
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 198
      Top = 73
      Width = 113
      Height = 21
      DataField = 'VLRPRECOTOTAL'
      DataSource = dmEF.dsPdeItem
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 318
      Top = 105
      Width = 113
      Height = 21
      DataField = 'VLRBASEICMS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 11
    end
    object DBEdit3: TDBEdit
      Left = 318
      Top = 129
      Width = 57
      Height = 21
      Color = clMenu
      DataField = 'ALIQUOTAICMS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 12
    end
    object DBEdit5: TDBEdit
      Left = 318
      Top = 153
      Width = 113
      Height = 21
      DataField = 'VLRICMS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 13
    end
    object DBEdit16: TDBEdit
      Left = 318
      Top = 177
      Width = 113
      Height = 21
      DataField = 'VLRISENTASICMS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 318
      Top = 201
      Width = 113
      Height = 21
      DataField = 'VLROUTRASICMS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 15
    end
    object DBEdit18: TDBEdit
      Left = 318
      Top = 225
      Width = 113
      Height = 21
      DataField = 'PORCREDUCAOICMS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 16
    end
    object dbedtSTE: TDBEdit
      Left = 318
      Top = 249
      Width = 43
      Height = 21
      Color = clScrollBar
      DataField = 'SITTRIBUTARIAESTADUAL'
      DataSource = dmEF.dsPdeItem
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit20: TDBEdit
      Left = 558
      Top = 105
      Width = 113
      Height = 21
      DataField = 'VLRBASEIPI'
      DataSource = dmEF.dsPdeItem
      TabOrder = 18
    end
    object DBEdit21: TDBEdit
      Left = 558
      Top = 129
      Width = 65
      Height = 21
      DataField = 'ALIQUOTAIPI'
      DataSource = dmEF.dsPdeItem
      TabOrder = 19
    end
    object DBEdit22: TDBEdit
      Left = 558
      Top = 153
      Width = 113
      Height = 21
      DataField = 'VLRIPI'
      DataSource = dmEF.dsPdeItem
      TabOrder = 20
    end
    object DBEdit23: TDBEdit
      Left = 558
      Top = 177
      Width = 113
      Height = 21
      DataField = 'VLRISENTASIPI'
      DataSource = dmEF.dsPdeItem
      TabOrder = 21
    end
    object DBEdit24: TDBEdit
      Left = 558
      Top = 201
      Width = 113
      Height = 21
      DataField = 'VLROUTRASIPI'
      DataSource = dmEF.dsPdeItem
      TabOrder = 22
    end
    object DBEdit25: TDBEdit
      Left = 558
      Top = 225
      Width = 17
      Height = 21
      Color = clScrollBar
      DataField = 'TIPOIPI'
      DataSource = dmEF.dsPdeItem
      ReadOnly = True
      TabOrder = 23
    end
    object DBEdit26: TDBEdit
      Left = 558
      Top = 249
      Width = 113
      Height = 21
      Color = clScrollBar
      DataField = 'SITTRIBUTARIAFEDERAL'
      DataSource = dmEF.dsPdeItem
      ReadOnly = True
      TabOrder = 24
    end
    object DBEdit1: TDBEdit
      Left = 84
      Top = 105
      Width = 113
      Height = 21
      DataField = 'VLRPIS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 84
      Top = 129
      Width = 65
      Height = 21
      DataField = 'ALIQUOTAPIS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 84
      Top = 153
      Width = 113
      Height = 21
      DataField = 'VLRCOFINS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 84
      Top = 177
      Width = 112
      Height = 21
      DataField = 'ALIQUOTACOFINS'
      DataSource = dmEF.dsPdeItem
      TabOrder = 10
    end
    object DBEdit27: TDBEdit
      Left = 6
      Top = 32
      Width = 74
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      Color = clScrollBar
      DataField = 'EMPRESAID'
      DataSource = dmEF.dsPdeItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit28: TDBEdit
      Left = 84
      Top = 32
      Width = 80
      Height = 21
      Hint = 'N'#186' do Pedido'
      Color = clScrollBar
      DataField = 'PDEID'
      DataSource = dmEF.dsPdeItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
end
