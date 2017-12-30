unit tmbCompMove;

interface

uses 
  Classes, Windows, Messages, Controls, StdCtrls, ComCtrls;

const
  sc_DragMove: Longint = $F012;

type
  TtmbCompMove = class (TComponent)
  private
    procedure Click(Sender: TObject);
  protected
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Executa(AOwner: TComponent; AControl: TControl);
  end;

  TtmbSizerControl = class (TCustomControl)
  private
    FControl: TControl;
    FRectList: array [1..8] of TRect;
    FPosList: array [1..8] of Integer;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateHandle; override;
    procedure WmNcHitTest(var Msg: TWmNcHitTest); message wm_NcHitTest;
    procedure WmSize(var Msg: TWmSize); message wm_Size;
    procedure WmLButtonDown(var Msg: TWmLButtonDown); message wm_LButtonDown;
    procedure WmMove(var Msg: TWmMove); message wm_Move;
    procedure Paint; override;
    procedure SizerControlExit(Sender: TObject);
    procedure KeyDownPress(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    constructor Create(AOwner: TComponent; AControl: TControl);
  end;

procedure Register;

implementation

uses
  Graphics;

procedure Register;
begin
 RegisterComponents ('Toshiba', [TtmbCompMove]);
end;

{ TtmbCompMove }

procedure TtmbCompMove.Click(Sender: TObject);
begin
 TtmbSizerControl.Create( ( Sender as TControl ).Parent, ( Sender as TControl ) );
end;

constructor TtmbCompMove.Create(AOwner: TComponent);
begin
 inherited;
end;

destructor TtmbCompMove.Destroy;
begin
 inherited;
end;

procedure TtmbCompMove.Executa(AOwner: TComponent; AControl: TControl);
begin
 TtmbSizerControl.Create( AOwner, AControl );
end;

procedure TtmbCompMove.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if Operation = opInsert then 
  begin
   if AComponent is TEdit then
      TEdit( AComponent ).OnClick := Click
   else if AComponent is TCheckBox then
      TCheckBox( AComponent ).OnClick := Click
   else if AComponent is TRadioButton then
      TRadioButton( AComponent ).OnClick := Click
   else if AComponent is TComboBox then
      TComboBox( AComponent ).OnEnter := Click
   else if AComponent is TDateTimePicker then
      TDateTimePicker( AComponent ).OnClick := Click
   else if AComponent is TLabel then
      TLabel( AComponent ).OnClick := Click;
  end; 
end;

{ TtmbSizerControl }

constructor TtmbSizerControl.Create (
  AOwner: TComponent; AControl: TControl);
var R: TRect;
begin
 inherited Create (AOwner);
 FControl := AControl;
 // install the new handler
 OnExit := SizerControlExit;
 OnKeyDown := KeyDownPress;
 // set the size and position
 R := FControl.BoundsRect;
 InflateRect (R, 2, 2);
 BoundsRect := R;
 // set the parent
 Parent := FControl.Parent;
 // create the list of positions
 FPosList[1] := htTopLeft;
 FPosList[2] := htTop;
 FPosList[3] := htTopRight;
 FPosList[4] := htRight;
 FPosList[5] := htBottomRight;
 FPosList[6] := htBottom;
 FPosList[7] := htBottomLeft;
 FPosList[8] := htLeft;
end;

procedure TtmbSizerControl.CreateHandle;
begin
 inherited CreateHandle;
 SetFocus;
end;

procedure TtmbSizerControl.CreateParams (var Params: TCreateParams);
begin
 inherited CreateParams(Params);
 Params.ExStyle := Params.ExStyle + ws_ex_Transparent;
end;

procedure TtmbSizerControl.Paint;
var I: Integer;
begin
 Canvas.Brush.Color := clBlack;
 for I := 1 to  8 do
   Canvas.Rectangle (FRectList[I].Left, FRectList[I].Top, FRectList[I].Right, FRectList[I].Bottom);
end;

procedure TtmbSizerControl.WmNcHitTest(var Msg: TWmNcHitTest);
var Pt: TPoint;
    I: Integer;
begin
 Pt := Point(Msg.XPos, Msg.YPos);
 Pt := ScreenToClient(Pt);
 Msg.Result := 0;
 for I := 1 to 8 do
   if PtInRect(FRectList[I], Pt) then
      Msg.Result := FPosList[I];
 // if the return value was not set
 if Msg.Result = 0 then
    inherited;
end;

procedure TtmbSizerControl.WmSize (var Msg: TWmSize);
var R: TRect;
begin
 R := BoundsRect;
 InflateRect(R, -2, -2);
 FControl.BoundsRect := R;
 // setup data structures
 FRectList[1] := Rect(0, 0, 5, 5);
 FRectList[2] := Rect(Width div 2 - 3, 0, Width div 2 + 2, 5);
 FRectList[3] := Rect(Width - 5, 0, Width, 5);
 FRectList[4] := Rect(Width - 5, Height div 2 - 3, Width, Height div 2 + 2);
 FRectList[5] := Rect(Width - 5, Height - 5, Width, Height);
 FRectList[6] := Rect(Width div 2 - 3, Height - 5, Width div 2 + 2, Height);
 FRectList[7] := Rect(0, Height - 5, 5, Height);
 FRectList[8] := Rect(0, Height div 2 - 3, 5, Height div 2 + 2);
end;

procedure TtmbSizerControl.SizerControlExit (Sender: TObject);
begin
 Free;
end;

procedure TtmbSizerControl.WmLButtonDown (var Msg: TWmLButtonDown);
begin
 Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TtmbSizerControl.WmMove (var Msg: TWmMove);
var R: TRect;
begin
 R := BoundsRect;
 InflateRect(R, -2, -2);
 FControl.Invalidate; // repaint entire surface
 FControl.BoundsRect := R;
end;

procedure TtmbSizerControl.KeyDownPress(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = 46 then
 begin
//  FControl.Free;
//  SizerControlExit(Self);
 end;
end;

end.
