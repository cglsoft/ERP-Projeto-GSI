unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, StdCtrls, Provider, DBClient, DB, SqlExpr;

type
  TForm1 = class(TForm)
    sqlcnnTOSHIBA: TSQLConnection;
    sqldtsNovo: TSQLDataSet;
    sqldtsNovoMODELOID: TStringField;
    sqldtsNovoDESCRICAOPORTUGUES: TStringField;
    sqldtsNovoDESCRICAOINGLES: TStringField;
    sqldtsNovoCOMENTARIO: TStringField;
    sqldtsNovoGRUPOID: TStringField;
    sqldtsNovoTIPO: TStringField;
    sqldtsNovoFORNECEDORID: TBCDField;
    sqldtsNovoCUSTOHORAID: TBCDField;
    sqldtsNovoREGANVISAID: TStringField;
    sqldtsNovoDESCRICAOANVISA: TStringField;
    sqldtsNovoIMAGEM: TBlobField;
    sqldtsNovoUSUARIO: TStringField;
    sqldtsAntigo: TSQLDataSet;
    dsAntigo: TDataSource;
    cdsNovo: TClientDataSet;
    dsprvNovo: TDataSetProvider;
    dsprvAntigo: TDataSetProvider;
    cdsAntigo: TClientDataSet;
    dsNovo: TDataSource;
    Button1: TButton;
    cdsNovoMODELOID: TStringField;
    cdsNovoDESCRICAOPORTUGUES: TStringField;
    cdsNovoDESCRICAOINGLES: TStringField;
    cdsNovoCOMENTARIO: TStringField;
    cdsNovoGRUPOID: TStringField;
    cdsNovoTIPO: TStringField;
    cdsNovoFORNECEDORID: TBCDField;
    cdsNovoCUSTOHORAID: TBCDField;
    cdsNovoREGANVISAID: TStringField;
    cdsNovoDESCRICAOANVISA: TStringField;
    cdsNovoIMAGEM: TBlobField;
    cdsNovoUSUARIO: TStringField;
    cdsAntigoMODELOID: TStringField;
    cdsAntigoDESCRICAOPORTUGUES: TStringField;
    cdsAntigoDESCRICAOINGLES: TStringField;
    cdsAntigoCOMENTARIO: TStringField;
    cdsAntigoGRUPOID: TStringField;
    cdsAntigoTIPO: TStringField;
    cdsAntigoFORNECEDORID: TBCDField;
    cdsAntigoCUSTOHORAID: TBCDField;
    cdsAntigoREGANVISAID: TStringField;
    cdsAntigoIMAGEM: TBlobField;
    cdsAntigoUSUARIO: TStringField;
    sqldtsAntigoMODELOID: TStringField;
    sqldtsAntigoDESCRICAOPORTUGUES: TStringField;
    sqldtsAntigoDESCRICAOINGLES: TStringField;
    sqldtsAntigoCOMENTARIO: TStringField;
    sqldtsAntigoGRUPOID: TStringField;
    sqldtsAntigoTIPO: TStringField;
    sqldtsAntigoFORNECEDORID: TBCDField;
    sqldtsAntigoCUSTOHORAID: TBCDField;
    sqldtsAntigoREGANVISAID: TStringField;
    sqldtsAntigoIMAGEM: TBlobField;
    sqldtsAntigoUSUARIO: TStringField;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses u_reconcilie2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 cdsNovo.Open;
 cdsAntigo.Open;

 while not cdsAntigo.Eof do
 begin
  if cdsNovo.Locate( 'MODELOID',VarArrayOf([cdsAntigoMODELOID.Value]),[loPartialKey]) then
     begin
      cdsNovo.Edit;
      cdsNovoDESCRICAOPORTUGUES.Value := cdsAntigoDESCRICAOPORTUGUES.Value;
      cdsNovoDESCRICAOINGLES.Value    := cdsAntigoDESCRICAOINGLES.Value;
      cdsNovoCOMENTARIO.Value         := cdsAntigoCOMENTARIO.Value;
      cdsNovoGRUPOID.Value            := cdsAntigoGRUPOID.Value;
      cdsNovo.Post;
     end
  else
     begin
      cdsNovo.Insert;
      cdsNovoMODELOID.Value           := cdsAntigoMODELOID.Value;
      cdsNovoDESCRICAOPORTUGUES.Value := cdsAntigoDESCRICAOPORTUGUES.Value;
      cdsNovoDESCRICAOINGLES.Value    := cdsAntigoDESCRICAOINGLES.Value;
      cdsNovoGRUPOID.Value            := cdsAntigoGRUPOID.Value;
      cdsNovoTIPO.Value               := cdsAntigoTIPO.Value;
//      cdsNovoFORNECEDORID.Value       := cdsAntigoFORNECEDORID.Value;
      cdsNovoUSUARIO.Value            := cdsAntigoUSUARIO.Value;
      cdsNovo.Post;
     end;

  cdsAntigo.Next;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 cdsNovo.CheckBrowseMode;
 cdsNovo.ApplyUpdates(-1);
end;

end.
