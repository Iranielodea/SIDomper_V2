unit ULicencaVO;

interface

uses
  uTableName, uKeyField, System.SysUtils, System.Generics.Collections;

type
  [TableName('Licenca')]
  TLicencaVO = class
  private
    FDataAtualizacao: TDate;
    FIPExterno: string;
    FQtdeUsuario: Integer;
    FCNPJCPF: string;
    FId: Integer;
    FEmpresa: string;
    FQtdeEstacao: Integer;
    FBuild: string;
    FIPLocal: string;
    FCodigo: Integer;
    FIdCliente: Integer;
    FQuantidadeRegistros: Integer;
    procedure SetBuild(const Value: string);
    procedure SetCNPJCPF(const Value: string);
    procedure SetDataAtualizacao(const Value: TDate);
    procedure SetEmpresa(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetIPExterno(const Value: string);
    procedure SetIPLocal(const Value: string);
    procedure SetQtdeEstacao(const Value: Integer);
    procedure SetQtdeUsuario(const Value: Integer);
    procedure SetCodigo(const Value: Integer);
    procedure SetIdCliente(const Value: Integer);
    procedure SetQuantidadeRegistros(const Value: Integer);
  public
    [keyField('Lic_Id')]
    property Id: Integer read FId write SetId;
    [FieldName('Lic_Codigo')]
    property Codigo: Integer read FCodigo write SetCodigo;
    [FieldName('Lic_CNPJCPF')]
    property CNPJCPF: string read FCNPJCPF write SetCNPJCPF;
    [FieldName('Lic_Empresa')]
    property Empresa: string read FEmpresa write SetEmpresa;
    [FieldName('Lic_qtdeEstacao')]
    property QtdeEstacao: Integer read FQtdeEstacao write SetQtdeEstacao;
    [FieldName('Lic_QtdeUsuario')]
    property QtdeUsuario: Integer read FQtdeUsuario write SetQtdeUsuario;
    [FieldName('Lic_IPExterno')]
    property IPExterno: string read FIPExterno write SetIPExterno;
    [FieldDate('Lic_DataAtualizacao')]
    property DataAtualizacao: TDate read FDataAtualizacao write SetDataAtualizacao;
    [FieldName('Lic_Build')]
    property Build: string read FBuild write SetBuild;
    [FieldName('Lic_IPLocal')]
    property IPLocal: string read FIPLocal write SetIPLocal;
    [FieldNull('Lic_Cliente')]
    property IdCliente: Integer read FIdCliente write SetIdCliente;

    property QuantidadeRegistros: Integer read FQuantidadeRegistros write SetQuantidadeRegistros;
  end;

  TListaLicenca = TObjectList<TLicencaVO>;

implementation

{ TLicencaVO }

procedure TLicencaVO.SetBuild(const Value: string);
begin
  FBuild := Value;
end;

procedure TLicencaVO.SetCNPJCPF(const Value: string);
begin
  FCNPJCPF := Value;
end;

procedure TLicencaVO.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TLicencaVO.SetDataAtualizacao(const Value: TDate);
begin
  FDataAtualizacao := Value;
end;

procedure TLicencaVO.SetEmpresa(const Value: string);
begin
  FEmpresa := Value;
end;

procedure TLicencaVO.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TLicencaVO.SetIdCliente(const Value: Integer);
begin
  FIdCliente := Value;
end;

procedure TLicencaVO.SetIPExterno(const Value: string);
begin
  FIPExterno := Value;
end;

procedure TLicencaVO.SetIPLocal(const Value: string);
begin
  FIPLocal := Value;
end;

procedure TLicencaVO.SetQtdeEstacao(const Value: Integer);
begin
  FQtdeEstacao := Value;
end;

procedure TLicencaVO.SetQtdeUsuario(const Value: Integer);
begin
  FQtdeUsuario := Value;
end;

procedure TLicencaVO.SetQuantidadeRegistros(const Value: Integer);
begin
  FQuantidadeRegistros := Value;
end;

end.
