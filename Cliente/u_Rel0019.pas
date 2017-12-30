unit u_Rel0019;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0019 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRShape24: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText25: TQRDBText;
    z: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText30: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRBand1: TQRBand;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText34: TQRDBText;
    QRBand3: TQRBand;
    QRShape18: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel21: TQRLabel;
    QRSysData3: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0019: TfrmRel0019;

implementation

uses u_0019,FuncoesDSI;

{$R *.dfm}

procedure TfrmRel0019.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action     := cafree;
 frmRel0019 := nil;
end;

procedure TfrmRel0019.QRLabel20Print(sender: TObject; var Value: String);
begin
 Value := frm0019.wwdtpcktCtrlEstoqueIni.Text + '  a  ' + frm0019.wwdtpcktCtrlEstoqueFim.Text;
end;

procedure TfrmRel0019.QRLabel16Print(sender: TObject; var Value: String);
begin
 Value := StrZero( StrToInt( frm0019.mktProdIni.Text ), 5, 0 ) + ' ao Nº ' + StrZero( StrToInt( frm0019.mktProdFim.Text ), 5, 0 );
end;

procedure TfrmRel0019.QRLabel3Print(sender: TObject; var Value: String);
begin
 Value := frm0019.wwdtpcktCtrlEstoqueIni.Text;
end;

procedure TfrmRel0019.QRSysData1Print(sender: TObject; var Value: String);
begin
 Value := IntToStr( ( StrToInt( Value ) + 1 ) );
end;

procedure TfrmRel0019.QRLabel25Print(sender: TObject; var Value: String);
begin
 Value := Copy( Value, 1, 42 );
end;

procedure TfrmRel0019.QRDBText1Print(sender: TObject; var Value: String);
begin
 if frm0019.cdsCtrlEstoque.FieldByName('TIPODOCUMENTO').Value = 'ERR' then
    Value := '';
end;

end.
