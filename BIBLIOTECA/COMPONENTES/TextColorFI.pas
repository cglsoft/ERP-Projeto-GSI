unit TextColorFI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TTextColorFI = class(TStaticText)
  private
    FCor: TColor;
    FCorDesact: TColor;
    { Private declarations }
    procedure CMMouseLeave(var Message: TMessage);message CM_MOUSELEAVE;
    procedure CMMouseEnter(var Message: TMessage);message CM_MOUSEENTER;
    procedure SetCor(const Value: TColor);
    procedure SetCorDesact(const Value: TColor);

  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
  published
    { Published declarations }
    property CorAtiva : TColor read FCor write SetCor;
    property CorDesativa : TColor read FCorDesact write SetCorDesact;
  end;


procedure Register;

implementation

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TTextColorFI]);
end;

{ TTextColorFI }

procedure TTextColorFI.CMMouseEnter(var Message: TMessage);
begin
 Self.Font.Color := FCor;
end;

procedure TTextColorFI.CMMouseLeave(var Message: TMessage);
begin
 Self.Font.Color := FCorDesact;
end;

constructor TTextColorFI.Create(AOwner:TComponent);
begin
 inherited;
end;

procedure TTextColorFI.SetCor(const Value: TColor);
begin
 FCor := Value;
 Self.Font.Color := FCorDesact;
end;

procedure TTextColorFI.SetCorDesact(const Value: TColor);
begin
 FCorDesact := Value;
end;

end.
