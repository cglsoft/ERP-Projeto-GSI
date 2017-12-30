object frmParRelVendedor: TfrmParRelVendedor
  Left = 226
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parametros Rel. de Vendedores e Representantes'
  ClientHeight = 290
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 8
    Width = 285
    Height = 257
    Caption = ' Par'#226'metros do Relat'#243'rio '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 129
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFuncaoVenda: TLabel
      Left = 8
      Top = 138
      Width = 85
      Height = 13
      Caption = 'Fun'#231#227'o na Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 97
      Width = 33
      Height = 13
      Caption = 'Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 179
      Width = 35
      Height = 13
      Caption = 'Cliente '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cmbFuncaoVenda: TComboBox
      Left = 8
      Top = 152
      Width = 264
      Height = 21
      Hint = 'Selecione a Financeira'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      OnEnter = cmbFuncaoVendaEnter
      OnExit = cmbFuncaoVendaExit
    end
    object chkTodoVendedor: TCheckBox
      Left = 8
      Top = 56
      Width = 145
      Height = 17
      Caption = 'Todos os Vendedores'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = chkTodoVendedorClick
    end
    object DateTimePicker1: TwwDBDateTimePicker
      Left = 8
      Top = 32
      Width = 113
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 0
    end
    object DateTimePicker2: TwwDBDateTimePicker
      Left = 128
      Top = 32
      Width = 113
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 8
      Top = 112
      Width = 84
      Height = 21
      Enabled = False
      TabOrder = 4
      OnChange = Edit1Change
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 78
      Width = 144
      Height = 17
      Caption = 'Especificar Pedido'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    object edtCliente: TEdit
      Left = 8
      Top = 194
      Width = 84
      Height = 21
      TabOrder = 6
      OnChange = Edit1Change
    end
  end
  object BitBtn1: TBitBtn
    Left = 298
    Top = 16
    Width = 95
    Height = 33
    Caption = '&Relat'#243'rio'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6040000424DF604000000000000360000002800000010000000130000000100
      200000000000C004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF006C6A6A006C6A6A00FF00FF00FF00FF006C6A6A006C6A
      6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF006C6A6A00AAA5A500A59F9F006C6A6A006C6A6A006C6A6A00E6E3
      E1006C6A6A006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF006C6A6A00DBD9D800A59F9F00A59F9F00A59F9F0036363600353535006C6A
      6A00C1BFBE00E6E3E100B8B6B6006C6A6A006C6A6A006C6A6A00FF00FF006C6A
      6A00D5D3D200CAC8C700948D8C00948D8C00948D8C003C363B000A0A0A000707
      07000B0B0B00070707007C6F6A00BCBABA006C6A6A00FF00FF006C6A6A00CAC8
      C700CAC8C700948D8C00D8D6D500CECBCB00BFBDBC00AFAFAF00A59F9F00948C
      8A005B5A5A000707070009090900080808006C6A6A00786D6B006C6A6A00CAC8
      C700948D8C00F1EEE900F8F3EC00F8F3EC00E6E3E100E0DEDD00E0DEDD00D1CF
      CF00BFBDBC00ACABAB00948C8A00575555007C6F6A00786D6B006C6A6A00948D
      8C00F8F3EC00F8F3EC00F8F3EC00D5D3D200999392009F9A9A00B3ADAB00C4C1
      C100D8D6D500DBD9D800C7C5C400B8B6B60096908F006C696900FF00FF006C6A
      6A006C6A6A00EFECE700ADA8A8007C6F6A00948C8A009993920096908F009B96
      9500999392009F9A9A00BCBABA00D1CFCF00C4C1C1006C6A6A00FF00FF00FF00
      FF00FF00FF006C6A6A00B7847E00A47E74008B766D007C6F6A0067656500786D
      6B00948D8C00A8A2A200CECBCB00C4C1C1006C6A6A00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00B8837E00FBDBB700F8D1A600EAC9A900B7847E00B784
      7E00B8837E0081726B006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00B8837E00FCDCBA00F8D3AA00F7D0A500F7D0A500F7D0
      A500B8837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00B7847E00FCE7CF00FBE1C300F9D8B300F8D1A600F7D0A500B883
      7E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00B8837E00FBEBD700FCE4CA00FCDEBD00F9D8B300F8D1A600B883
      7E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00B8837E00F8F3EC00F8F3EC00FBEBD700FCE4CA00FCDEBD00EFCBA500B883
      7E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00B8837E00B8837E00B8837E00F9EFE100FCE7CF00FBE1C300B8837E00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B8837E00B8837E00B8837E00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn2: TBitBtn
    Left = 298
    Top = 56
    Width = 95
    Height = 32
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C0F00EF00EF00EF00EF00EF00EF00EF0000001F7C0F000F00
      0F000F001F7C0F001F00FF00FF01FF01FF01FF01FF01FF01EF01730217001F00
      1F001F000F000F001F001F00FF00FF01FF01FF01FF01FF01EF01F7028C011700
      1F001F000F001F7C0F000F000F00EF00EF00FF02FF02FF02EF01F70210028C01
      0F000F001F7CFF7FFF7FFF7FFF7FFF7F0000FF03FF03FF03EF01F70210021002
      0821FF7FFF7FFF7FFF7FFF7FFF7F00000000082108210821EF01F70210021002
      0821FF7FFF7FFF7FFF7FFF7FFF7F84000000104210421042EF01F70210021002
      0821FF7FFF7FFF7FFF7FFF7FFF7F6B018C018C3110421042EF01730284101002
      0821FF7FFF7F0000000000000000EF017B038C018C311042EF017302E71C1002
      0821FF7FFF7F6B01F702F702F7027B03FF037B038C018C31EF01F70210021002
      0821FF7FFF7FEF01FF1FFF3FFF3FFF3FFF5FFF1FEF018C31EF01F70210021002
      0821FF7FFF7F0000000000000000EF01FF1FEF018C311042EF01F70210021002
      0821FF7FFF7FFF7FFF7FFF7FFF7FEF01EF018C3110421042EF1DF70210021002
      0821FF7FFF7FFF7FFF7FFF7FFF7F840000001042104210428C31F73E73021002
      0821FF7FFF7FFF7FFF7FFF7FFF7FFF7F000010421042104210428C31F73E7302
      0821FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000082108210821082108218410EF1D
      8410FF7FFF7F}
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 271
    Width = 405
    Height = 19
    Panels = <>
  end
  object cdsRelVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 104
  end
  object dsRelVendedor: TDataSource
    DataSet = cdsRelVendedor
    Left = 360
    Top = 112
  end
end
