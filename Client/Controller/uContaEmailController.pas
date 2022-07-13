unit uContaEmailController;

interface

uses
  System.SysUtils, uDMContaEmail, uRegras, uEnumerador, uDM, Data.DB, Vcl.Forms,
  uUsuarioController, uEnviarEmail, uEmailBase, uFormProcesso, System.Generics.Collections;

type
  TContaEmailController = class
  private
    FModel: TDMContaEmail;
    FOperacao: TOperacao;
    FPorta: Integer;
    FHost: string;
    FUserName: string;
    FPassword: string;
    FMeuEmail: string;
    FAutenticar: Boolean;
    FAutenticarSSL: Boolean;
    FId: Integer;
    procedure Post;
    procedure PopularCampos();
    procedure ChamarAplicativoEmail;
    procedure GerarArquivo(AEmails: TObjectList<TEmailBase>);
    procedure VerificarAplicativoEmailAberto();
  public
    procedure Filtrar(Campo, Texto, Ativo: string; Contem: Boolean = False);
    procedure FiltrarCodigo(Codigo: Integer);
    procedure LocalizarId(Id: Integer);
    procedure LocalizarCodigo(Codigo: integer);
    procedure Novo(IdUsuario: Integer);
    procedure Editar(Id: Integer; Formulario: TForm);
    procedure Salvar(IdUsuario: Integer);
    procedure Excluir(IdUsuario, Id: Integer);
    procedure Cancelar();
    procedure Imprimir(IdUsuario: Integer);
    function ProximoId(): Integer;
    function ProximoCodigo(): Integer;
    procedure Pesquisar(Id, Codigo: Integer);
    function CodigoAtual: Integer;
    procedure EnviarEmail(AIdUsuario: Integer; ADestinario, ACopiaOculta,
      AAssunto, ATexto, AArquivo: string; AAviso: Boolean=True; AEnviarEmail: Boolean = True);
    procedure EnviarEmails(AEmails: TObjectList<TEmailBase>);

    property Model: TDMContaEmail read FModel write FModel;
    constructor Create(AIdUsuario: Integer=0);
    destructor Destroy; override;
  end;

implementation

{ TRevendaController }

uses uFuncoesSIDomper;

procedure TContaEmailController.Cancelar;
begin
  if FModel.CDSCadastro.State in [dsEdit, dsInsert] then
    FModel.CDSCadastro.Cancel;
end;

procedure TContaEmailController.ChamarAplicativoEmail;
var
  nome: string;
begin
  Sleep(3000);
  nome := ExtractFilePath(Application.ExeName) + 'DomperEmail.exe';
  TFuncoes.VisualizarArquivo(nome);
  Sleep(3000);
end;

function TContaEmailController.CodigoAtual: Integer;
begin
  if FModel.CDSCadastroCtaEm_Id.AsInteger = 0 then
    Result := ProximoCodigo -1
  else
    Result := FModel.CDSCadastroCtaEm_Codigo.AsInteger;
end;

constructor TContaEmailController.Create(AIdUsuario: Integer = 0);
var
  Usuario: TUsuarioController;
begin
  inherited Create;
  FModel := TDMContaEmail.Create(nil);

  if AIdUsuario > 0 then
  begin
    Usuario := TUsuarioController.Create;
    try
      Usuario.LocalizarId(AIdUsuario);
      LocalizarId(Usuario.Model.CDSCadastroUsu_ContaEmail.AsInteger);
      PopularCampos();
    finally
      FreeAndNil(Usuario);
    end;
  end;
end;

destructor TContaEmailController.Destroy;
begin
  FreeAndNil(FModel);
  inherited;
end;

procedure TContaEmailController.Editar(Id: Integer; Formulario: TForm);
var
  Negocio: TServerMethods1Client;
  Resultado: Boolean;
begin
  if Id = 0 then
    raise Exception.Create('N�o h� Registro para Editar!');

  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    FModel.CDSCadastro.Close;
    Resultado := Negocio.Editar(CContaEmailPrograma, dm.IdUsuario, Id);
    FModel.CDSCadastro.Open;

    TFuncoes.HabilitarCampo(Formulario, Resultado);

    FOperacao := opEditar;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.EnviarEmail(AIdUsuario: Integer; ADestinario,
  ACopiaOculta, AAssunto, ATexto, AArquivo: string; AAviso: Boolean; AEnviarEmail: Boolean);
var
  objEmail: TEmailBase;
  Usuario: TUsuarioController;
  emails: TObjectList<TEmailBase>;
  FormularioProcesso: TfrmProcesso;

begin
  if AEnviarEmail = False then
    Exit;

  VerificarAplicativoEmailAberto();

  objEmail := TEmail.Create;
  Usuario := TUsuarioController.Create;
  emails := TObjectList<TEmailBase>.Create();
  FormularioProcesso := TfrmProcesso.Create(nil);
  try
    if AIdUsuario > 0 then
    begin
      Usuario.LocalizarId(AIdUsuario);
      LocalizarId(Usuario.Model.CDSCadastroUsu_ContaEmail.AsInteger);
      PopularCampos();
    end;

    if FId > 0 then
    begin
      objEmail.Porta          := FPorta;
      objEmail.Host           := FHost;
      objEmail.UserName       := FUserName;
      objEmail.Password       := FPassword;
      objEmail.MeuEmail       := FMeuEmail;
      objEmail.Destinatario   := ADestinario;
      objEmail.CopiaOculta    := ACopiaOculta;
      objEmail.Texto          := ATexto;
      objEmail.Assunto        := AAssunto;
      objEmail.ArquivoAnexo   := AArquivo;
      objEmail.Autenticar     := FAutenticar;
      objEmail.AutenticarSSL  := FAutenticarSSL;


//      objEmail.Host           := 'smtp.gmail.com';
//      objEmail.UserName       := 'irani.elodea70@gmail.com';
//      objEmail.Password       := 'ielodea@70g';
//      objEmail.MeuEmail       := 'irani.elodea70@gmail.com';
//      objEmail.Destinatario   := 'iranielodea@hotmail.com';
//      objEmail.Porta := 587;


      emails.Add(objEmail);
      GerarArquivo(emails);

//      if LowerCase(FHost.Trim) = 'smtp.gmail.com' then
//      begin
//        if AAviso = True then
//          FormularioProcesso.Mensagem('Aguarde, enviando email...');
//
//        objEmail.EnviarEmail();
//      end else
//      begin
//        emails.Add(objEmail);
//        GerarArquivo(emails);
//      end;


//      objEmail.Porta          := 587; // FPorta;
//      objEmail.Host           := 'smtp.office365.com'; //FHost;
//      objEmail.UserName       := 'irani@domper.com.br';//FUserName;
//      objEmail.Password       := 'E@584369'; //FPassword;
//      objEmail.MeuEmail       := 'irani@domper.com.br'; //FMeuEmail;
//      objEmail.Destinatario   := 'iranielodea@hotmail.com'; //ADestinario;
//      objEmail.CopiaOculta    := ''; //ACopiaOculta;
//      objEmail.Texto          := ATexto;
//      objEmail.Assunto        := AAssunto;
//      objEmail.ArquivoAnexo   := AArquivo;
//      objEmail.Autenticar     := FAutenticar;
//      objEmail.AutenticarSSL  := FAutenticarSSL;


//      if AAviso = True then
//        FormularioProcesso.Mensagem('Aguarde, enviando email...');

      //objEmail.EnviarEmail();

    end;
  finally
    FreeAndNil(objEmail);
    FreeAndNil(Usuario);
    emails.DisposeOf;
    FreeAndNil(FormularioProcesso);
  end;
end;

procedure TContaEmailController.EnviarEmails(AEmails: TObjectList<TEmailBase>);
var
  item: TEmailBase;
//  objEmail: TEmailBase;
  Usuario: TUsuarioController;
begin
  VerificarAplicativoEmailAberto();

  Usuario := TUsuarioController.Create;
  try
    for item in AEmails  do
    begin
      if item.IdUsuario > 0 then
      begin
        Usuario.LocalizarId(item.IdUsuario);
        LocalizarId(Usuario.Model.CDSCadastroUsu_ContaEmail.AsInteger);
        PopularCampos();
      end;

      if FId > 0 then
      begin
        item.Porta    := FPorta;
        item.Host     := FHost;
        item.UserName := FUserName;
        item.Password := FPassword;
        item.MeuEmail := FMeuEmail;
      end;
    end;
    GerarArquivo(AEmails);
  finally
    Usuario.DisposeOf;
  end;



//  objEmail := TEmail.Create;
//  Usuario := TUsuarioController.Create;
//  try
//    for item in AEmails  do
//    begin
//      if item.IdUsuario > 0 then
//      begin
//        Usuario.LocalizarId(item.IdUsuario);
//        LocalizarId(Usuario.Model.CDSCadastroUsu_ContaEmail.AsInteger);
//        PopularCampos();
//      end;
//
//      if FId > 0 then
//      begin
////        objEmail.Destinatario   := item.Destinatario;
//        objEmail.CopiaOculta    := item.CopiaOculta;
//        objEmail.Texto          := item.Texto;
//        objEmail.Assunto        := item.Assunto;
//        objEmail.ArquivoAnexo   := item.ArquivoAnexo;
//
//      objEmail.Porta          := 587; // FPorta;
//      objEmail.Host           := 'smtp.office365.com'; //FHost;
//      objEmail.UserName       := 'irani@domper.com.br';//FUserName;
//      objEmail.Password       := 'E@584369'; //FPassword;
//      objEmail.MeuEmail       := 'irani@domper.com.br'; //FMeuEmail;
//      objEmail.Destinatario   := 'iranielodea@hotmail.com'; //ADestinario;
//
////        objEmail.Porta          := FPorta;
////        objEmail.Host           := FHost;
////        objEmail.UserName       := FUserName;
////        objEmail.Password       := FPassword;
////        objEmail.MeuEmail       := FMeuEmail;
////        objEmail.Autenticar     := FAutenticar;
////        objEmail.AutenticarSSL  := FAutenticarSSL;
//      end;
//    end;
//
//    GerarArquivo(AEmails);
//  finally
//    FreeAndNil(objEmail);
//    FreeAndNil(Usuario);
//  end;
end;

procedure TContaEmailController.Excluir(IdUsuario, Id: Integer);
var
  Negocio: TServerMethods1Client;
begin
  if Id = 0 then
    raise Exception.Create('N�o h� Registro para Excluir!');

  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    Negocio.Excluir(CContaEmailPrograma, IdUsuario, Id);
    FModel.CDSConsulta.Delete;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.Filtrar(Campo, Texto, Ativo: string;
  Contem: Boolean);
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    FModel.CDSConsulta.Close;
    Negocio.Filtrar(CContaEmailPrograma, Campo, Texto, Ativo, Contem);
    FModel.CDSConsulta.Open;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.FiltrarCodigo(Codigo: Integer);
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    FModel.CDSConsulta.Close;
    Negocio.FiltrarCodigo(CContaEmailPrograma, Codigo);
    FModel.CDSConsulta.Open;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.GerarArquivo(AEmails: TObjectList<TEmailBase>);
var
  arq: TextFile;
  arquivoEmail: string;
  email: TEmailBase;
begin
  arquivoEmail := ExtractFilePath(Application.ExeName) + 'email.txt';

  Assign(arq, arquivoEmail);
  Rewrite(arq);
  try
      for email in AEmails do
      begin
        Writeln(arq, '001 ' + email.Porta.ToString());
        Writeln(arq, '002 ' + email.Host);
        Writeln(arq, '003 ' + email.UserName);
        Writeln(arq, '004 ' + email.Password);
        Writeln(arq, '005 ' + email.MeuEmail);
        Writeln(arq, '006 ' + email.MeuNome);
        Writeln(arq, '007 ' + email.Destinatario);
        Writeln(arq, '008 ' + email.Copia);
        Writeln(arq, '009 ' + email.CopiaOculta);
        Writeln(arq, '010 ' + email.Assunto);
        Writeln(arq, '011 ' + email.Texto);
        Writeln(arq, '012 ' + email.ArquivoAnexo);
      end;
  finally
    CloseFile(arq);
  end;

  ChamarAplicativoEmail();
end;

procedure TContaEmailController.Imprimir(IdUsuario: Integer);
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(dm.Conexao.DBXConnection);
  try
    Negocio.Relatorio(CContaEmailPrograma, IdUsuario);
    FModel.Rel.Print;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.LocalizarCodigo(Codigo: integer);
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    FModel.CDSCadastro.Close;
    Negocio.LocalizarCodigo(CContaEmailPrograma, Codigo);
    FModel.CDSCadastro.Open;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.LocalizarId(Id: Integer);
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    FModel.CDSCadastro.Close;
    Negocio.LocalizarId(CContaEmailPrograma, Id);
    FModel.CDSCadastro.Open;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.Novo(IdUsuario: Integer);
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    FModel.CDSCadastro.Close;
    Negocio.Novo(CContaEmailPrograma, IdUsuario);
    FModel.CDSCadastro.Open;

    FModel.CDSCadastro.Append;

    FModel.CDSCadastroCtaEm_Codigo.AsInteger := ProximoCodigo();

    FOperacao := opIncluir;
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.Pesquisar(Id, Codigo: Integer);
begin
  if Id > 0 then
    LocalizarId(Id)
  else
    LocalizarCodigo(Codigo);
end;

procedure TContaEmailController.PopularCampos;
begin
  FId             := FModel.CDSCadastroCtaEm_Id.AsInteger;
  FPorta          := FModel.CDSCadastroCtaEm_Porta.AsInteger;
  FHost           := FModel.CDSCadastroCtaEm_SMTP.AsString;
  FUserName       := FModel.CDSCadastroCtaEm_Email.AsString;
  FPassword       := FModel.CDSCadastroCtaEm_Senha.AsString;
  FMeuEmail       := FModel.CDSCadastroCtaEm_Email.AsString;
  FAutenticar     := FModel.CDSCadastroCtaEm_Autenticar.AsBoolean;
  FAutenticarSSL  := FModel.CDSCadastroCtaEm_AutenticarSSL.AsBoolean;


//  FHost := 'smtp.office365.com';
//  FPorta := 587;
//  FMeuEmail := 'irani@domper.com.br';
//  FPassword := 'domper@123';
//  FUserName := FMeuEmail;

end;

procedure TContaEmailController.Post;
begin
  if FModel.CDSConsulta.State in [dsEdit, dsInsert] then
    FModel.CDSConsulta.Post;
end;

function TContaEmailController.ProximoCodigo: Integer;
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    Result := StrToInt(Negocio.ProximoCodigo(CContaEmailPrograma).ToString);
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

function TContaEmailController.ProximoId: Integer;
var
  Negocio: TServerMethods1Client;
begin
  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    Result := StrToInt(Negocio.ProximoId(CContaEmailPrograma).ToString);
    dm.Desconectar;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.Salvar(IdUsuario: Integer);
var
  Negocio: TServerMethods1Client;
begin
  if FModel.CDSCadastroCtaEm_Codigo.AsInteger <= 0 then
    raise Exception.Create('Informe o C�digo!');

  if Trim(FModel.CDSCadastroCtaEm_Nome.AsString) = '' then
    raise Exception.Create('Informe o Nome!');

  if Trim(FModel.CDSCadastroCtaEm_Email.AsString) = '' then
    raise Exception.Create('Informe o Email!');

  if Trim(FModel.CDSCadastroCtaEm_Senha.AsString) = '' then
    raise Exception.Create('Informe a Senha!');

//  if Trim(FModel.CDSCadastroCtaEm_SMTP.AsString) = '' then
//    raise Exception.Create('Informe o SMTP!');

  if (FModel.CDSCadastroCtaEm_Porta.AsInteger) <= 0 then
    raise Exception.Create('Informe a Porta!');

  dm.Conectar;
  Negocio := TServerMethods1Client.Create(DM.Conexao.DBXConnection);
  try
    try
      Post();
      FModel.CDSCadastro.ApplyUpdates(0);

      Negocio.Salvar(CContaEmailPrograma, IdUsuario);
      FOperacao := opNavegar;
      dm.Desconectar;
    except
      on E: Exception do
      begin
        dm.ErroConexao(E.Message);
      end;
    end;
  finally
    FreeAndNil(Negocio);
  end;
end;

procedure TContaEmailController.VerificarAplicativoEmailAberto;
begin
  if TFuncoes.ProcessExists('DomperEmail.exe') then
    raise Exception.Create('Aplicativo est� Sendo Executado!' + sLineBreak
    + 'Feche o Aplicativo de Envio de Email!');
end;

end.
