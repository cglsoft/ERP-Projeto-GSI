object frmPortalAtualizacao: TfrmPortalAtualizacao
  Left = 0
  Top = 0
  Caption = 'Portal Atualiza'#231#227'o dos JOBs'
  ClientHeight = 389
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnAcumuladoPortal: TButton
    Left = 8
    Top = 24
    Width = 257
    Height = 25
    Caption = 'Acumulado Mensal Financeiro'
    TabOrder = 0
    OnClick = btnAcumuladoPortalClick
  end
  object btnCancelarAcumulado: TButton
    Left = 8
    Top = 55
    Width = 257
    Height = 25
    Caption = 'Cancelar Acumulado  Mensal Financeiro'
    TabOrder = 1
    OnClick = btnCancelarAcumuladoClick
  end
  object Button1: TButton
    Left = 8
    Top = 86
    Width = 257
    Height = 25
    Caption = 'Atualizar Portal Financeiro'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 148
    Width = 257
    Height = 25
    Caption = 'Atualizar Portal ( T'#201'CNICA/COMERCIAL)'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 117
    Width = 257
    Height = 25
    Caption = 'Atualizar Comercial Vendedores'
    TabOrder = 4
    OnClick = Button3Click
  end
end
