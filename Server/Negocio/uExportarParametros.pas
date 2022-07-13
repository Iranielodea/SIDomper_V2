unit uExportarParametros;

interface

uses
  System.SysUtils, System.Classes, uArquivoTexto, uDM, uFireDAC,
  uParametroVO, System.Generics.Collections, uGenericDAO;

type

  TExportarParametros = class
  private
    FArquivo: string;

  public
    procedure Exportar();
    function Importar(): TObjectList<TParametroVO>;

    constructor Create(); overload;
  end;

implementation

{ TExportarParametros }

constructor TExportarParametros.Create;
begin
  inherited Create;
  FArquivo := 'D:\DOMPER\SIDomper\Banco\Parametros.txt';
end;

procedure TExportarParametros.Exportar;
var
  obj: TFireDAC;
  Arq: TArquivoTexto;
begin
  obj := TFireDAC.create;
  Arq := TArquivoTexto.Create(FArquivo, tpExportar);
  try
    obj.OpenSQL('SELECT * FROM Parametros');
    while not obj.Model.Eof do
    begin
      Arq.ExportarInt(obj.Model.FieldByName('Par_Codigo').AsInteger,      001, 005);
      Arq.ExportarInt(obj.Model.FieldByName('Par_Programa').AsInteger,    006, 005);
      Arq.ExportarString(obj.Model.FieldByName('Par_Nome').AsString,      011, 200);
      Arq.ExportarString(obj.Model.FieldByName('Par_Valor').AsString,     211, 250);
      Arq.ExportarString(obj.Model.FieldByName('Par_Obs').AsString,       411, 500);
      Arq.NovaLinha();
      obj.Model.Next;
    end;
  finally
    FreeAndNil(obj);
    FreeAndNil(Arq);
  end;
end;

function TExportarParametros.Importar: TObjectList<TParametroVO>;
var
  model: TParametroVO;
  lista: TObjectList<TParametroVO>;
  Arq: TArquivoTexto;
begin
  lista := TObjectList<TParametroVO>.Create();
  Arq := TArquivoTexto.Create(FArquivo, tpImportar);
  try
    while not (Arq.FimArquivo()) do
    begin
      Arq.ProximoRegistro();

      model := TParametroVO.Create;
      model.Id        := 0;
      model.Codigo    := Arq.ImportarInt(001, 005);
      model.Programa  := Arq.ImportarInt(006, 005);
      model.Nome      := Arq.ImportarString(011, 200);
      model.Valor     := Arq.ImportarString(211, 250);
      model.Obs       := Arq.ImportarString(461, 500);

      lista.Add(model);
    end;
  finally
    FreeAndNil(Arq);
  end;
  Result := lista;
end;

end.
