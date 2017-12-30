unit u_dmGSI;

interface

uses
  SysUtils, Classes, MConnect, ObjBrkr, DBClient, DB, SConnect;

type
  TdmGsi = class(TDataModule)
    sckcnnGsi: TSocketConnection;
    smobbrkGsi: TSimpleObjectBroker;
    cdsDataInspector: TClientDataSet;
    cnnbrkGsi: TConnectionBroker;
    cdsSQL: TClientDataSet;
    cdsSQLNOME: TStringField;
    cdsSQLSQL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure AddListServidores;
    { Private declarations }
  public
    { Public declarations }
    UsuarioAtivo   : String;
    Password       : String;
    PortaoVisaoID  : Integer;
    FuncionarioId  : Integer;
    EmpresaFuncId  : Integer;
    PadraoFilialId : Integer;
    procedure DadosPadraoEmpresa( var cds: TClientDataSet; IdentID : String );
  end;

var
  dmGsi: TdmGsi;

implementation

uses FuncoesCliente, FuncoesDSI;

{$R *.dfm}

procedure TdmGSI.DadosPadraoEmpresa( var cds: TClientDataSet; IdentID : String );
var iSql : String;
begin
 iSql := 'SELECT FILIALID, CPF_CNPJ, INSCRESTADUAL, INSCRMUNICIPAL, CEPID, NUMERO, COMPLEMENTO, ' +
         ' ENDERECO, BAIRRO, CIDADE, SIGLAUFID, TELEFONE ' +
         '  FROM EF_FILIAL ' +
         ' WHERE ' +
         '  FILIALID = ' + IdentID;

 ExecDynamicProvider( -1, iSQL, cds );
end;

procedure TdmGsi.AddListServidores;
var IpSrv1, IpSrv2 : string;
    nIdx: Integer;
begin
 IpSrv1 := LoadStringFromRegistry( Registro_Principal, 'Servidor_Interno', '192.168.1.1' );
 IpSrv2 := LoadStringFromRegistry( Registro_Principal, 'Servidor_Externo', '192.168.1.1' );

 // Servidor Interno
 smobbrkGsi.Servers.Add;
 nIdx := smobbrkGsi.Servers.Count - 1;

 smobbrkGsi.Servers[nIdx].ComputerName := IpSrv1;
 smobbrkGsi.Servers[nIdx].Port         := 9000;
 smobbrkGsi.Servers[nIdx].Enabled      := True;

 // Servidor Externo
 smobbrkGsi.Servers.Add;
 nIdx := smobbrkGsi.Servers.Count - 1;

 smobbrkGsi.Servers[nIdx].ComputerName := IpSrv2;
 smobbrkGsi.Servers[nIdx].Port         := 9000;
 smobbrkGsi.Servers[nIdx].Enabled      := True;
end;

procedure TdmGsi.DataModuleCreate(Sender: TObject);
begin
 AddListServidores;

 pCnnMain := sckcnnGsi;
 DataInspector := cdsDataInspector;
end;

end.

