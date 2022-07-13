unit uExportarDepartamentoAcesso;

interface

uses
  System.SysUtils, System.Classes, uArquivoTexto, uDM, uFireDAC,
  uDepartamentoAcessoVO, System.Generics.Collections, uGenericDAO;

type
  TExportarDepartamentoAcesso = class
  private
    FArquivo: string;
  public
    procedure Exportar();
//    function Importar(): TObjectList<TDepartamentoAcessoVO>;

    constructor Create(); overload;
  end;


implementation

{ TExportarDepartamentoAcesso }

constructor TExportarDepartamentoAcesso.Create;
begin
  inherited Create;
  FArquivo := 'D:\DOMPER\SIDomper\Banco\DepartamentoAcesso.txt';
end;

procedure TExportarDepartamentoAcesso.Exportar;
var
  obj: TFireDAC;
  Arq: TArquivoTexto;
begin
  obj := TFireDAC.create;
  Arq := TArquivoTexto.Create(FArquivo, tpExportar);
  try
    obj.OpenSQL('SELECT * FROM Departamento_Acesso WHERE DepAc_Departamento = 7');
    while not obj.Model.Eof do
    begin
      Arq.ExportarInt(obj.Model.FieldByName('DepAc_Departamento').AsInteger, 001, 005);
      Arq.ExportarInt(obj.Model.FieldByName('DepAc_Programa').AsInteger,     006, 005);
      Arq.ExportarBool(obj.Model.FieldByName('DepAc_Acesso').AsBoolean);
      Arq.ExportarBool(obj.Model.FieldByName('DepAc_Incluir').AsBoolean);
      Arq.ExportarBool(obj.Model.FieldByName('DepAc_Editar').AsBoolean);
      Arq.ExportarBool(obj.Model.FieldByName('DepAc_Excluir').AsBoolean);
      Arq.ExportarBool(obj.Model.FieldByName('DepAc_Relatorio').AsBoolean);
      Arq.NovaLinha();
      obj.Model.Next;
    end;
  finally
    FreeAndNil(obj);
    FreeAndNil(Arq);
  end;
end;

//function TExportarDepartamentoAcesso.Importar: TObjectList<TDepartamentoAcessoVO>;
//var
//  model: TDepartamentoAcessoVO;
//  lista: TObjectList<TDepartamentoAcessoVO>;
//  Arq: TArquivoTexto;
//begin
//  lista := TObjectList<TDepartamentoAcessoVO>.Create();
//  Arq := TArquivoTexto.Create(FArquivo, tpImportar);
//  try
//    while not (Arq.FimArquivo()) do
//    begin
//      Arq.ProximoRegistro();
//
//      model := TDepartamentoAcessoVO.Create;
//      model.Id             := 0;
//      model.IdDepartamento := Arq.ImportarInt(001, 005);
//      model.Programa       := Arq.ImportarInt(006, 005);
//      model.Acesso         := Arq.ImportarBool(011, 001);
//      model.Incluir        := Arq.ImportarBool(012, 001);
//      model.Editar         := Arq.ImportarBool(013, 001);
//      model.Excluir        := Arq.ImportarBool(014, 001);
//      model.Relatorio      := Arq.ImportarBool(015, 001);
//
//      lista.Add(model);
//    end;
//  finally
//    FreeAndNil(Arq);
//  end;
//  Result := lista;
//end;

end.
