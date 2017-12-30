
{*******************************************************}
{                                                       }
{       Borland Delphi Visual Component Library         }
{                                                       }
{  Copyright (c) 1995-2002 Borland Software Corporation }
{                                                       }
{*******************************************************}

unit PgCtrlTree;

interface

uses
  Classes, Controls, ComCtrls;

type
  TTabCtrlTree = class(TCustomTreeView)
  private
    FTabControl: TCustomTabControl;
    procedure SetTabControl(const Value: TCustomTabControl);
  protected
    procedure Change(Node: TTreeNode); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  published
    property TabControl: TCustomTabControl read FTabControl write SetTabControl;
  end;

implementation

type
  TTabControlClass = class(TCustomTabControl);
  TPageControlClass = class(TPageControl);

procedure TTabCtrlTree.Change(Node: TTreeNode);
var
  PgCtrl: TPageControl;
  ANode: TTreeNode;
begin
  inherited;
  if not Assigned(FTabControl) then exit;
  if FTabControl is TPageControl then
  begin
    PgCtrl := FTabControl as TPageControl;
    if Node.Level <> 0 then
    begin
      PgCtrl := TTabSheet(Node.Data).PageControl;
      ANode := Node.Parent;
      while Assigned(ANode) do
      begin
        TPageControlClass(TTabSheet(ANode.Data).PageControl).SetActivePage(TTabSheet(ANode.Data));
        ANode := ANode.Parent;
      end;
    end;
    TPageControlClass(PgCtrl).SetActivePage(TTabSheet(Node.Data));
  end
  else
    TTabControlClass(FTabControl).TabIndex := Integer(Node.Data);
end;

procedure TTabCtrlTree.Notification(AComponent: TComponent;
  Operation: TOperation);
var
  I: Integer;
begin
  inherited;
  if (Operation = opRemove) then
    if (AComponent = FTabControl) then
    begin
      FTabControl := nil;
      if (FTabControl is TPageControl) and not (csDestroying in ComponentState) then
      begin
        Items.BeginUpdate;
        try
          for I := 0 to Items.Count - 1 do
            RemoveFreeNotification(TTabSheet(Items[I].Data));
          Items.Clear;
        finally
          Items.EndUpdate;
        end;
      end;
    end
    else
      if (FTabControl is TPageControl) and
         not (csDestroying in ComponentState) and Assigned(FTabControl) then
        for I := Items.Count - 1 downto 0 do
          if Items[I].Data = AComponent then
          begin
            RemoveFreeNotification(TTabSheet(Items[I].Data));
            Items[I].Free;
          end;
end;

procedure TTabCtrlTree.SetTabControl(const Value: TCustomTabControl);

  procedure AddNodes(TabCtrl: TCustomTabControl; ParentNode: TTreeNode);
  var
    I, Y: Integer;
    NewNode: TTreeNode;
    PageCtrl: TPageControl;
  begin
    TabCtrl.FreeNotification(Self);
    if TabCtrl is TPageControl then
    begin
      PageCtrl := TabCtrl as TPageControl;
      for I := 0 to PageCtrl.PageCount - 1 do
      begin
        NewNode := Items.AddChildObject(ParentNode, PageCtrl.Pages[I].Caption, PageCtrl.Pages[I]);
        PageCtrl.Pages[I].FreeNotification(Self);
        for Y := 0 to PageCtrl.Pages[I].ControlCount - 1 do
          if PageCtrl.Pages[I].Controls[Y] is TPageControl then
            AddNodes(TPageControl(PageCtrl.Pages[I].Controls[Y]), NewNode);
      end;
    end
    else
      for I := 0 to TTabControlClass(TabCtrl).Tabs.Count - 1 do
        NewNode := Items.AddChildObject(ParentNode, TTabControlClass(TabCtrl).Tabs[I], Pointer(I));
  end;

begin
  if FTabControl <> Value then
  begin
    if Assigned(FTabControl) then
      FTabControl.RemoveFreeNotification(Self);
    FTabControl := Value;
    if Assigned(FTabControl) then
      AddNodes(FTabControl, nil);
  end;
end;

end.
