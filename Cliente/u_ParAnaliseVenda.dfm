object frmParAnaliseVenda: TfrmParAnaliseVenda
  Left = 258
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Parametros An'#225'lise de Vendas'
  ClientHeight = 273
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 276
    Top = 4
    Width = 133
    Height = 25
    Caption = '&An'#225'lise de Vendas'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
      FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
      FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
      FF0A444444444444444D444444444444444A444444444444444D}
  end
  object BitBtn2: TBitBtn
    Left = 276
    Top = 66
    Width = 133
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
  object grpbxPeriodo: TGroupBox
    Left = 0
    Top = 0
    Width = 265
    Height = 273
    Align = alLeft
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
      Left = 140
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
    object Label3: TLabel
      Left = 8
      Top = 59
      Width = 103
      Height = 13
      Caption = 'Data pagamento FOB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 102
      Width = 80
      Height = 13
      Caption = 'Data Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 191
      Width = 117
      Height = 13
      Caption = 'Taxa de Convers'#227'o FOB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 145
      Width = 73
      Height = 13
      Caption = 'Perc. Encargos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 8
      Top = 32
      Width = 121
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
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 136
      Top = 32
      Width = 121
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
    object wwDBDateTimePicker3: TwwDBDateTimePicker
      Left = 8
      Top = 75
      Width = 121
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
      TabOrder = 2
    end
    object wwDBDateTimePicker4: TwwDBDateTimePicker
      Left = 8
      Top = 118
      Width = 121
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
      TabOrder = 3
    end
    object mktProvisaoComissao: TMaskEdit
      Left = 8
      Top = 210
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '2,15'
    end
    object mktPercEncargos: TMaskEdit
      Left = 8
      Top = 164
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '55,74'
    end
  end
  object BitBtn3: TBitBtn
    Left = 277
    Top = 35
    Width = 133
    Height = 25
    Caption = '&Processar Provis'#227'o'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAADADADA77DADADADDADADA7007DADADAADADA70FB07DADADDADA70FBFB07
      DADAADA70FB00FB07DADDA70FBFBFBFB07DAA70FBFB00FBFB07DD07BFBF00BFB
      F70AAD0FBFB00FBFB07DDAD0FBF00BFB07DAADAD0FB00FB07DADDADAD0FBFB07
      DADAADADAD0FB07DADADDADADAD007DADADAADADADAD7DADADAD}
  end
end
