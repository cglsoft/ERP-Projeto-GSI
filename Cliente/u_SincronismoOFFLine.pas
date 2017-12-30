unit u_SincronismoOFFLine;

interface

uses
  Windows, Forms, Messages, SysUtils, Variants, Classes, Controls, StdCtrls,
  Buttons, DBClient, Dialogs, DB;

type
  TfrmSincronismoOFFLine = class(TForm)
    BitBtn1: TBitBtn;
    grpbxParam: TGroupBox;
    chkbxDespesas: TCheckBox;
    chkbxBancoHoras: TCheckBox;
    btnFechar: TBitBtn;
    chkbxOS: TCheckBox;
    chkbxOSDefeito: TCheckBox;
    chkbxOSHora: TCheckBox;
    chkbxOSOcOperacional: TCheckBox;
    chkbxOSMaterial: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSincronismoOFFLine: TfrmSincronismoOFFLine;

implementation

uses u_dmOFFLine, u_dmEF, u_dmRD, u_dmGSI, FuncoesCliente, u_dmAS, u_dmOs;

{$R *.dfm}

procedure TfrmSincronismoOFFLine.BitBtn1Click(Sender: TObject);
var cds : TClientDataSet;
    Arq, InstSQL : String;
begin
 Screen.Cursor := crHourGlass;
 try
  if not DirectoryExists('OFFLINE') then
     if not CreateDir('OFFLINE') then
        raise Exception.Create('Não é possível criar o diretório OFFINE');

  if chkbxDespesas.Checked then
     if FileExists( 'OFFLINE\DESPESAS.XML') then
        DeleteFile( 'OFFLINE\DESPESAS.XML');

  if chkbxBancoHoras.Checked then
     if FileExists( 'OFFLINE\BANCOHORAS.XML') then
         DeleteFile( 'OFFLINE\BANCOHORAS.XML');

  if chkbxOS.Checked then
     if FileExists( 'OFFLINE\OS.XML') then
         DeleteFile( 'OFFLINE\OS.XML');

  if chkbxOSDefeito.Checked then
     begin
      if FileExists( 'OFFLINE\OSDEFEITO.XML') then
         DeleteFile( 'OFFLINE\OSDEFEITO.XML');
      if FileExists( 'OFFLINE\OSDEFEITOOFF.XML') then
         DeleteFile( 'OFFLINE\OSDEFEITOOFF.XML');
     end;

  if chkbxOSHora.Checked then
     begin
      if FileExists( 'OFFLINE\OSHORA.XML') then
         DeleteFile( 'OFFLINE\OSHORA.XML');

      if FileExists( 'OFFLINE\OSHORAOFF.XML') then
         DeleteFile( 'OFFLINE\OSHORAOFF.XML');
     end;

  if chkbxOSOcOperacional.Checked then
     if FileExists( 'OFFLINE\OSOCOPERACIONAL.XML') then
         DeleteFile( 'OFFLINE\OSOCOPERACIONAL.XML');

  if chkbxOSMaterial.Checked then
     if FileExists( 'OFFLINE\OSMATERIAL.XML') then
         DeleteFile( 'OFFLINE\OSMATERIAL.XML');


  Arq := 'OFFLINE\OPERACAO.XML';
  dmRD.cdsOperacao.Open;
  GerarPesquisa( dmRD.cdsOperacao,  '' );
  dmRD.cdsOperacao.SaveToFile( Arq );
  dmRD.cdsOperacao.Close;

  Arq := 'OFFLINE\FERIADO.XML';
  dmRD.cdsFeriado.Open;

  GerarPesquisa( dmRD.cdsFeriado,  '' );
  dmRD.cdsFeriado.SaveToFile( Arq );
//  dmRD.cdsFeriado.AddIndex('idx1','DATAFERIADO',[ixCaseInsensitive],'','',0 );
//  dmRD.cdsFeriado.IndexName := 'idx1';
  dmRD.cdsFeriado.Close;

  Arq := 'OFFLINE\USUARIO.XML';
  dmAS.cdsUsuario.Open;
  GerarPesquisa( dmAS.cdsUsuario,  '' );
  dmAS.cdsUsuario.SaveToFile( Arq );
  dmAS.cdsUsuario.Close;

  Arq := 'OFFLINE\DEFEITO.XML';
  dmOS.cdsDefeito.Open;
  GerarPesquisa( dmOS.cdsDefeito,  '' );
  dmOS.cdsDefeito.SaveToFile( Arq );
  dmOS.cdsDefeito.Close;

  Arq := 'OFFLINE\FILIAL.XML';
  dmEF.cdsFilial.Open;
  GerarPesquisa( dmEF.cdsFilial,  '' );
  dmEF.cdsFilial.SaveToFile( Arq );
  dmEF.cdsFilial.Close;

  Arq := 'OFFLINE\HORASCFGTRAB.XML';
  dmEF.cdsFilial.Open;
  GerarPesquisa( dmEF.cdsFilial,  '' );
  dmRD.cdsHorasCfgTrab.SaveToFile(  Arq );
  dmRD.cdsHorasCfgTrab.Close;

  Arq := 'OFFLINE\OCOPERACIONAL.XML';
  dmOS.cdsOcOperacional.Open;
  GerarPesquisa( dmOS.cdsOcOperacional,  '' );
  dmOS.cdsOcOperacional.SaveToFile( Arq );
  dmOS.cdsOcOperacional.Close;

  Arq := 'OFFLINE\CONDPAGTO.XML';
  dmEF.cdsCondPagto.Open;
  GerarPesquisa( dmEF.cdsCondPagto,  '' );
  dmEF.cdsCondPagto.SaveToFile( Arq );
  dmEF.cdsCondPagto.Close;

  Arq := 'OFFLINE\CONFIG.XML';
  dmAS.cdsConfig.Open;
  dmAS.cdsConfig.SaveToFile( Arq );
  dmAS.cdsConfig.Close;

  Arq := 'OFFLINE\ENTIDADE.XML';
  if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Visualizar Todos Adiantamentos/Despesas', False ) then
     InstSQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
                '       EF_ENTIDADE.NOME, ' +
                '       EF_ENTIDADE.FILIALID, ' +
                '       EF_ENTIDADE.HORASCFGTRABID, ' +
                '       EF_ENTIDADE.USUARIO ' +
                '  FROM EF_ENTIDADE, ' +
                '       EF_ENTIDADEGRUPO ' +
                ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
                ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 '
  else
     InstSQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
                '       EF_ENTIDADE.NOME, ' +
                '       EF_ENTIDADE.FILIALID, ' +
                '       EF_ENTIDADE.HORASCFGTRABID, ' +
                '       EF_ENTIDADE.USUARIO ' +
                '  FROM EF_ENTIDADE, ' +
                '       EF_ENTIDADEGRUPO ' +
                ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
                ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 ' +
                ' AND EF_ENTIDADE.DEPARTAMENTOID IN' +
                '     (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                '     FROM EF_ENTIDADEDEPTO' +
                '     WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ ')';

  ExecDynamicProvider( -1, InstSQL, cds );

  // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
  if cds.IsEmpty then
     begin
      InstSQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
                 '       EF_ENTIDADE.NOME, ' +
                 '       EF_ENTIDADE.FILIALID, ' +
                 '       EF_ENTIDADE.HORASCFGTRABID, ' +
                 '       EF_ENTIDADE.USUARIO ' +
                 '  FROM EF_ENTIDADE, ' +
                 '       EF_ENTIDADEGRUPO ' +
                 ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
                 ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 ' +
                 ' AND EF_ENTIDADE.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId ) ;

      ExecDynamicProvider( -1, InstSQL, cds );
     end;

  cds.SaveToFile( Arq );
  cds.Close;

  // Custo Hora OS.
  Arq     := 'OFFLINE\CUSTOHORA.XML';
  InstSQL := ' SELECT PP_CATALOGO.MODELOID,' +
             '       OS_CUSTOHORA.CUSTOHORAID,' +
             '       OS_CUSTOHORA.DESCRICAO,' +
             '       OS_CUSTOHORA.VLRHORATRAB,' +
             '       OS_CUSTOHORA.VLRHORATRANSP,' +
             '       OS_CUSTOHORA.VLRHORAESPERA,' +
             '       OS_CUSTOHORA.VLRHORAOUTROS' +
             '  FROM PP_CATALOGO,' +
             '       OS_CUSTOHORA' +
             ' WHERE PP_CATALOGO.CUSTOHORAID = OS_CUSTOHORA.CUSTOHORAID';

  ExecDynamicProvider( -1, InstSQL, cds );
  cds.SaveToFile( Arq );
  cds.Close;

  // Produto
  Arq     := 'OFFLINE\PRODUTO.XML';
  InstSQL := ' SELECT EMPRESAID, PRODUTOID, DESCRICAOPORTUGUES, ' +
             '  ALIQUOTAIPI, PRECOVENDA, PRECOVENDAMINIMO ' +
             '  FROM EF_PRODUTO ';

  ExecDynamicProvider( -1, InstSQL, cds );
  cds.SaveToFile( Arq );
  cds.Close;


  MessageDlg( 'Sincronismo local está ok ', mtWarning, [mbOK], 0 );
 finally
  FreeAndNil( cds );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmSincronismoOFFLine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmSincronismoOFFLine := Nil;
end;

procedure TfrmSincronismoOFFLine.btnFecharEnter(Sender: TObject);
begin
 Close;
end;

end.
