unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, uConfig, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Forms;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarIni;
  public
    { Public declarations }
    procedure AbrirConexao();
    procedure FecharConexao();
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.AbrirConexao;
begin
  try
    if Conexao.Connected = False then
      Conexao.Open();
//  Conexao.Params.Values['DataBase'] := '127.0.0.1/3050:D:\TEMP\SIDomper\WSDATABASE';
  except
    // nada
  end;
end;

procedure TDM.CarregarIni;
var
  Config: TConfig;
begin
  Config := TConfig.CreateFB();
  try
    Config.Carregar();

    Conexao.Params.Values['DataBase']   := Config.DataBase;
//    Conexao.Params.Values['Server']     := Config.Servidor;
//    Conexao.Params.Values['User_Name']  := Config.User_Name;
//    Conexao.Params.Values['Password']   := Config.Password;
  finally
    FreeAndNil(Config);
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  CarregarIni();
end;

procedure TDM.FecharConexao;
begin
  Conexao.Close;
end;

end.
