unit uLicencaController;

interface

uses
  System.SysUtils, uRegras, System.Generics.Collections, ULicencaVO, uDM, uConverter, uGenericDAO,
  uDMMSS, uFireDAC, uLicencaItensVO, System.MaskUtils, uRegrasImportacao, DBXJSON, DBXJSONReflect,
  Vcl.Forms, Vcl.Dialogs, uFormProcesso, MidasLib;

  const CConsulta: string =
    'SELECT Lic_Id, Lic_Codigo, Lic_CNPJCPF,Lic_Empresa,Lic_QtdeEstacao,Lic_QtdeUsuario,Lic_IPExterno,Lic_DataAtualizacao,Lic_Build,Lic_IPLocal FROM Licenca';

  const CConsultaItens: string =
    'SELECT LicIte_Id, LicIte_Codigo, LicIte_CNPJCPF,LicIte_DataLcto,LicIte_Licenca,LicIte_DataUtilizacao,LicIte_Situacao, LicIte_Utilizada FROM Licenca_Itens';

type
  TLicencaController = class
  private
    function Echo(Value: string): string;
    function ObterCNPJ(ACNPJ: string): Integer;
    function ObterCNPJItem(ACNPJ: string): Integer;
    function ObterClientePorCNPJ(ACNPJ: string): Integer;
    function FormatarDocumento(ADocumento: string): string;
  public
    function ImportarLicenca(AUtilizada: Integer): string;
    procedure ListarLicencasItens(AUtilizada: Integer);

    function ImportarLicencaItens(FormularioProcesso: TfrmProcesso; Autilizada: Integer): TObjectList<TLicencaItensVO>;
    function ImportarLicencaClientes(FormularioProcesso: TfrmProcesso; Autilizada: Integer): TObjectList<TLicencaVO>;
    function SalvarDados(AObjLicenca, AObjItens: TJSONValue; FormularioProcesso: TfrmProcesso): string;

    procedure Importar(AUtilizada: Integer);

  end;

implementation

{ TLicencaController }

function TLicencaController.Echo(Value: string): string;
var
  Negocio: TServerMethods1Client;
begin
  Negocio := TServerMethods1Client.Create(dm.Conexao.DBXConnection);
  Result := Negocio.EchoString(Value);
  FreeAndNil(Negocio);
end;

function TLicencaController.FormatarDocumento(ADocumento: string): string;
begin
  if ADocumento.Length = 14 then
    Result := FormatMaskText('##.###.###/####-##;0;_', ADocumento)
  else
    Result := FormatMaskText('###.###.###-##;0;_', ADocumento);
end;

procedure TLicencaController.Importar(AUtilizada: Integer);
var
  Negocio2: uRegrasImportacao.TServerModule2Client;
  listaCliente : TObjectList<TLicencaVO>;
  ListaLicencaItens :TObjectList<TLicencaItensVO>;
  Marshal : TJSONMarshal;
  oLicencaJSON : TJSONValue;
  oLicencaItensJSON : TJSONValue;
  FormularioProcesso: TfrmProcesso;
  sResultado: string;
begin
  FormularioProcesso := TfrmProcesso.Create(nil);
  Marshal := TJSONMarshal.Create;
  try
    try
      listaCliente := ImportarLicencaClientes(FormularioProcesso, AUtilizada);
      ListaLicencaItens := ImportarLicencaItens(FormularioProcesso, AUtilizada);

      oLicencaJSON := Marshal.Marshal(listaCliente);
      oLicencaItensJSON := Marshal.Marshal(ListaLicencaItens);
    except
      on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
    end;
  finally
    FreeAndNil(listaCliente);
    FreeAndNil(Marshal);
    FreeAndNil(ListaLicencaItens);
  end;

  Negocio2 := uRegrasImportacao.TServerModule2Client.Create(dm.ConexaoMSS.DBXConnection);
  try
    FormularioProcesso.Mensagem('Salvando as licen�as..');
    sResultado := Negocio2.LicencasSalvar(oLicencaJSON, oLicencaItensJSON);

    if sResultado <> '' then
      raise Exception.Create(sResultado);

  finally
    FreeAndNil(Negocio2);
      FreeAndNil(FormularioProcesso);
  end;
end;

function TLicencaController.ImportarLicenca(AUtilizada: Integer): string;
var
  Negocio: uRegras.TServerMethods1Client;
  Negocio2: uRegrasImportacao.TServerModule2Client;
  lista : TObjectList<TLicencaVO>;
  sResultado: string;
  ListaLicencaItens :TObjectList<TLicencaItensVO>;
  Marshal : TJSONMarshal;
  oLicencaJSON : TJSONValue;
  oLicencaItensJSON : TJSONValue;
  FormularioProcesso: TfrmProcesso;
  bUtilizada: Boolean;
begin
  lista := TObjectList<TLicencaVO>.Create();
  ListaLicencaItens := TObjectList<TLicencaItensVO>.Create();

  Negocio := uRegras.TServerMethods1Client.Create(dm.Conexao.DBXConnection);
  Negocio2 := uRegrasImportacao.TServerModule2Client.Create(dm.ConexaoMSS.DBXConnection);

  FormularioProcesso := TfrmProcesso.Create(nil);
  Marshal := TJSONMarshal.Create;
  try
    try
      bUtilizada := True;
      if AUtilizada = 1 then
        bUtilizada := False;

      FormularioProcesso.Mensagem('Importa��o da licen�a itens...');
      ListaLicencaItens := TConverte.JSONToObject<TListaLicencaItens>(Negocio.FBLicencasListarItens(bUtilizada));
      ShowMessage('licen�as' + IntToStr(ListaLicencaItens.Count));

      FormularioProcesso.Mensagem('Importa��o da licen�a clientes...');
      lista := TConverte.JSONToObject<TListaLicenca>(Negocio.FBLicencasListar(bUtilizada));
      ShowMessage('Clientes ' + IntToStr(lista.Count));

      oLicencaJSON := Marshal.Marshal(lista);
      oLicencaItensJSON := Marshal.Marshal(ListaLicencaItens);

      FormularioProcesso.Mensagem('Salvando as licen�as..');
      sResultado := Negocio2.LicencasSalvar(oLicencaJSON, oLicencaItensJSON);

      if sResultado <> '' then
        raise Exception.Create(sResultado);
    except
      on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
    end;
  finally
    FreeAndNil(Marshal);
    FreeAndNil(Negocio2);
    FreeAndNil(Negocio);
    FreeAndNil(lista);
    FreeAndNil(ListaLicencaItens);
    FreeAndNil(FormularioProcesso);
  end;
end;

function TLicencaController.ImportarLicencaClientes(
  FormularioProcesso: TfrmProcesso; Autilizada: Integer): TObjectList<TLicencaVO>;
var
  Negocio: uRegras.TServerMethods1Client;
  lista : TObjectList<TLicencaVO>;
  bUtilizada: Boolean;
begin
  bUtilizada := True;
  if AUtilizada = 1 then
    bUtilizada := False;

  Negocio := uRegras.TServerMethods1Client.Create(dm.Conexao.DBXConnection);
  try
    try
      FormularioProcesso.Mensagem('Importa��o da licen�a clientes...');
      lista := TConverte.JSONToObject<TListaLicenca>(Negocio.FBLicencasListar(bUtilizada));
      ShowMessage('Clientes: ' + IntToStr(lista.Count));
      Result := lista;
    except
      on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
    end;
  finally
    FreeAndNil(Negocio);
  end;
end;

function TLicencaController.ImportarLicencaItens(FormularioProcesso: TfrmProcesso; Autilizada: Integer): TObjectList<TLicencaItensVO>;
var
  Negocio: uRegras.TServerMethods1Client;
  lista :TObjectList<TLicencaItensVO>;
  bUtilizada: Boolean;
begin
  bUtilizada := True;
  if AUtilizada = 1 then
    bUtilizada := False;

  Negocio := uRegras.TServerMethods1Client.Create(dm.Conexao.DBXConnection);
  try
    try
      lista := TConverte.JSONToObject<TListaLicencaItens>(Negocio.FBLicencasListarItens(bUtilizada));
      ShowMessage('licen�as: ' + IntToStr(lista.Count));
      Result := lista;
    except
      on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
    end;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TLicencaController.ListarLicencasItens(AUtilizada: Integer);
//var
//  Negocio: uRegras.TServerMethods1Client;
begin
//  Negocio := uRegras.TServerMethods1Client.Create(dm.Conexao.DBXConnection);
//  try
  // nao mais utilizada

//    dm.cdsItens.Close;
//    Negocio.ListarLicencasItens;
//    dm.cdsItens.Open;

//    ShowMessage('Fim da Importa��o! Registros: ' + IntToStr(DM.cdsItens.RecordCount) );
//  finally
//    FreeAndNil(Negocio);
//  end;
end;

function TLicencaController.ObterClientePorCNPJ(ACNPJ: string): Integer;
var
  obj: TFireDAC;
  sDoc: string;
begin
  sDoc := FormatarDocumento(ACNPJ);

  obj := TFireDAC.create;
  try
    obj.OpenSQL('SELECT Cli_Id FROM Cliente WHERE Cli_Dcto = ' + QuotedStr(sDoc));
    Result := obj.Model.FieldByName('Cli_Id').AsInteger;
  finally
    FreeAndNil(obj);
  end;
end;

function TLicencaController.ObterCNPJ(ACNPJ: string): Integer;
var
  obj: TFireDAC;
begin
  obj := TFireDAC.create;
  try
    obj.OpenSQL(CConsulta + ' WHERE Lic_CNPJCPF = ' + QuotedStr(ACNPJ));

    Result := obj.Model.FieldByName('Lic_Id').AsInteger;
  finally
    FreeAndNil(obj);
  end;
end;

function TLicencaController.ObterCNPJItem(ACNPJ: string): Integer;
var
  obj: TFireDAC;
begin
  obj := TFireDAC.create;
  try
    obj.OpenSQL(CConsultaItens + ' WHERE LicIte_CNPJCPF = ' + QuotedStr(ACNPJ));

    Result := obj.Model.FieldByName('LicIte_Id').AsInteger;
  finally
    FreeAndNil(obj);
  end;
end;

function TLicencaController.SalvarDados(AObjLicenca, AObjItens: TJSONValue; FormularioProcesso: TfrmProcesso): string;
var
  Negocio2: TServerModule2Client;
  sResultado: string;
begin
  Negocio2 := uRegrasImportacao.TServerModule2Client.Create(dm.ConexaoMSS.DBXConnection);
  try
    FormularioProcesso.Mensagem('Salvando as licen�as..');
    sResultado := Negocio2.LicencasSalvar(AObjLicenca, AObjItens);

    if sResultado <> '' then
      raise Exception.Create(sResultado);

    Result := sResultado;

  finally
    FreeAndNil(Negocio2);
  end;

end;

end.
