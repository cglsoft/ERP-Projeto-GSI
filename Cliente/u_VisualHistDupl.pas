unit u_VisualHistDupl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwDataInspector, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,
  DB, DBClient;

type
  TfrmVisualHistDupl = class(TForm)
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    cdsHistDupl: TClientDataSet;
    dsHistDupl: TDataSource;
    cdsHistDuplEMPRESAID: TBCDField;
    cdsHistDuplNFSID: TBCDField;
    cdsHistDuplDATAEMISSAOID: TSQLTimeStampField;
    cdsHistDuplPARCELAID: TBCDField;
    cdsHistDuplDATAVENCIMENTO: TSQLTimeStampField;
    cdsHistDuplDATAPAGTO: TSQLTimeStampField;
    cdsHistDuplVLRPARCELA: TBCDField;
    cdsHistDuplDUPLICATAID: TBCDField;
    cdsHistDuplEXPORTADO: TBCDField;
    cdsHistDuplVLRBASECOMISSAO: TBCDField;
    cdsHistDuplPAGTOVENDEDOR: TBCDField;
    cdsHistDuplUSUARIO: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualHistDupl: TfrmVisualHistDupl;

implementation

{$R *.dfm}

procedure TfrmVisualHistDupl.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
 If ( Column.FieldName = 'DATAPAGTO' ) or ( Column.FieldName = 'VLRPARCELA' ) or
    ( Column.FieldName = 'PAGTOVENDEDOR' ) then
    begin
     if cdsHistDupl.FieldByName('PAGTOVENDEDOR').AsInteger = 0 then
        begin
         TDBGrid( Sender ).Canvas.Brush.Color := clRed;
         TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
         TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
        end
    else
        begin
         TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
         TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
        end;
    end;
end;

procedure TfrmVisualHistDupl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualHistDupl := Nil;
end;

end.
