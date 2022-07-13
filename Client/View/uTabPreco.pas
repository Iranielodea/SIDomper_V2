unit uTabPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, uDMTabPreco,
  uTabPrecoController, Vcl.Mask, Vcl.DBCtrls, uFuncoesSIDomper, uImagens,
  uTipoController, uEnumerador, uTipo, uProdutoController, uProduto, uStatusController, uStatus, uModuloController, uModulo,
  uFraProduto, uFraTipo, uFraStatus, uParametrosController, uTabelaPrecoVO;

type
  TfrmTabPreco = class(TfrmBaseCadastro)
    Label4: TLabel;
    Label5: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    Ativo: TDBCheckBox;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    edtCodProduto: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    edtCodStatus: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    edtCodTipo: TDBEdit;
    Label9: TLabel;
    edtReferencia: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    btnProduto: TSpeedButton;
    btnStatus: TSpeedButton;
    btnTipo: TSpeedButton;
    dbItens: TDBGrid;
    dsItens: TDataSource;
    Label16: TLabel;
    tsProduto: TTabSheet;
    tsStatus: TTabSheet;
    tsTipo: TTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    FraProduto: TFraProduto;
    FraTipo: TFraTipo;
    FraStatus: TFraStatus;
    procedure edtDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure dbDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharEdicaoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbDadosTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure edtCodTipoExit(Sender: TObject);
    procedure btnTipoClick(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure edtCodStatusExit(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbItensEnter(Sender: TObject);
    procedure dbItensExit(Sender: TObject);
    procedure dbItensColExit(Sender: TObject);
    procedure dsItensStateChange(Sender: TObject);
    procedure DBMemo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FraStatusedtCodigoEnter(Sender: TObject);
    procedure FraStatusbtnProcClick(Sender: TObject);
    procedure FraTipobtnProcClick(Sender: TObject);
    procedure FraTipoedtCodigoEnter(Sender: TObject);
    procedure dbItensEditButtonClick(Sender: TObject);
    procedure tsProdutoShow(Sender: TObject);
    procedure tsStatusShow(Sender: TObject);
    procedure tsTipoShow(Sender: TObject);
  private
    { Private declarations }
    FController: TTabPrecoController;
    procedure Localizar(ATexto: string);
    procedure BuscarTipo(AId, ACodigo: Integer);
    procedure BuscarProduto(AId, ACodigo: Integer);
    procedure BuscarStatus(AId, ACodigo: Integer);
    procedure BuscarModulo(AId, ACodigo: Integer);
    procedure TeclasAtalho(var Key: Word);
    procedure BuscarIdTabelaPadrao;
    procedure AbrirTelaModulos();
  public
    { Public declarations }
    constructor create(APesquisar: Boolean = False); overload;
  end;

var
  frmTabPreco: TfrmTabPreco;

implementation

{$R *.dfm}

uses uGrade, uDM;

procedure TfrmTabPreco.AbrirTelaModulos;
begin
  TFuncoes.CriarFormularioModal(TfrmModulo.create(true));
  if dm.IdSelecionado > 0 then
    BuscarModulo(dm.IdSelecionado, 0);
end;

procedure TfrmTabPreco.btnEditarClick(Sender: TObject);
begin
  FController.Editar(dbDados.Columns[0].Field.AsInteger, Self);
  inherited;
  dbItens.ReadOnly := not edtNome.Enabled;
  if edtReferencia.Enabled then
    edtReferencia.SetFocus;
end;

procedure TfrmTabPreco.btnExcluirClick(Sender: TObject);
begin
  if TFuncoes.Confirmar('Excluir Registro?') then
  begin
    FController.Excluir(dm.IdUsuario, dbDados.Columns[0].Field.AsInteger);
    inherited;
  end;
end;

procedure TfrmTabPreco.btnFecharEdicaoClick(Sender: TObject);
begin
  FController.Cancelar;
  inherited;
end;

procedure TfrmTabPreco.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Localizar(edtDescricao.Text);
end;

procedure TfrmTabPreco.btnImprimirClick(Sender: TObject);
begin
  Localizar(edtDescricao.Text);
  FController.Relatorio(dm.IdUsuario);
  inherited;
end;

procedure TfrmTabPreco.btnNovoClick(Sender: TObject);
begin
  FController.Novo(dm.IdUsuario);
  dbItens.ReadOnly := False;
  inherited;
  edtReferencia.SetFocus;
end;

procedure TfrmTabPreco.btnProdutoClick(Sender: TObject);
begin
  inherited;
  TFuncoes.CriarFormularioModal(TfrmProduto.create(true));
  if dm.IdSelecionado > 0 then
    BuscarProduto(dm.IdSelecionado, 0);
end;

procedure TfrmTabPreco.btnSalvarClick(Sender: TObject);
var
  Id: Integer;
  filtro: TTabPrecoFiltro;
begin
  Id := FController.Salvar(dm.IdUsuario);

  filtro := TTabPrecoFiltro.Create;
  try
    FController.Filtrar('','','',filtro.Create,false,Id);
  finally
    FreeAndNil(filtro);
  end;
//  FController.FiltrarCodigo(FController.CodigoAtual());
  inherited;
end;

procedure TfrmTabPreco.btnStatusClick(Sender: TObject);
begin
  inherited;
  TFuncoes.CriarFormularioModal(TfrmStatus.create(TEnumPrograma.prTabelaPreco, true));
  if dm.IdSelecionado > 0 then
    BuscarStatus(dm.IdSelecionado, 0);
end;

procedure TfrmTabPreco.btnTipoClick(Sender: TObject);
begin
  inherited;
  TFuncoes.CriarFormularioModal(TfrmTipo.create(prTabelaPreco, true));
  if dm.IdSelecionado > 0 then
    BuscarTipo(dm.IdSelecionado, 0);
end;

procedure TfrmTabPreco.BuscarIdTabelaPadrao;
var
  parametroController: TParametrosController;
  iCodigo: Integer;
begin

  parametroController := TParametrosController.Create;
  try
    iCodigo := StrToIntDef(parametroController.LocalizarParametro(52, 125),0);
    if iCodigo > 0 then
    begin
      FraStatus.edtCodigo.Text := IntToStr(iCodigo);
      FraStatus.Adiciona();
    end;
  finally
      FreeAndNil(parametroController);
  end;
end;

procedure TfrmTabPreco.BuscarModulo(AId, ACodigo: Integer);
var
  obj: TModuloController;
begin
  obj := TModuloController.Create;
  try
    try
      obj.Pesquisar(AId, ACodigo);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
      end;
    end;
  finally
    if FController.Model.CDSItens.State = dsBrowse then
      FController.Model.CDSItens.Edit;

    FController.Model.CDSItensTabM_Modulo.AsString := obj.Model.CDSCadastroMod_Id.AsString;
    FController.Model.CDSItensMod_Codigo.AsString := obj.Model.CDSCadastroMod_Codigo.AsString;
    FController.Model.CDSItensMod_Nome.AsString := obj.Model.CDSCadastroMod_Nome.AsString;

    FreeAndNil(obj);
  end;
end;

procedure TfrmTabPreco.BuscarProduto(AId, ACodigo: Integer);
var
  obj: TProdutoController;
begin
  obj := TProdutoController.Create;
  try
    try
      obj.Pesquisar(AId, ACodigo);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        edtCodProduto.SetFocus;
      end;
    end;
  finally
    FController.ModoEdicaoInsercao;
    FController.Model.CDSCadastroTab_Produto.AsString := obj.Model.CDSCadastroProd_Id.AsString;
    FController.Model.CDSCadastroProd_Codigo.AsString := obj.Model.CDSCadastroProd_Codigo.AsString;
    FController.Model.CDSCadastroProd_Nome.AsString := obj.Model.CDSCadastroProd_Nome.AsString;

    FreeAndNil(obj);
  end;
  edtCodProduto.Modified := False;
end;

procedure TfrmTabPreco.BuscarStatus(AId, ACodigo: Integer);
var
  obj: TStatusController;
begin
  obj := TStatusController.Create;
  try
    try
      obj.Pesquisar(AId, ACodigo, TEnumPrograma.prTabelaPreco);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        edtCodStatus.SetFocus;
      end;
    end;
  finally
    FController.ModoEdicaoInsercao();
    FController.Model.CDSCadastroTab_Status.AsString := obj.Model.CDSCadastroSta_Id.AsString;
    FController.Model.CDSCadastroSta_Codigo.AsString := obj.Model.CDSCadastroSta_Codigo.AsString;
    FController.Model.CDSCadastroSta_Nome.AsString := obj.Model.CDSCadastroSta_Nome.AsString;

    FreeAndNil(obj);
  end;
  edtCodStatus.Modified := False;
end;

procedure TfrmTabPreco.BuscarTipo(AId, ACodigo: Integer);
var
  obj: TTipoController;
begin
  obj := TTipoController.Create;
  try
    try
      obj.Pesquisar(AId, ACodigo, prTabelaPreco);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        edtCodTipo.SetFocus;
      end;
    end;
  finally
    FController.ModoEdicaoInsercao();
    FController.Model.CDSCadastroTab_Tipo.AsString := obj.Model.CDSCadastroTip_Id.AsString;
    FController.Model.CDSCadastroTip_Codigo.AsString := obj.Model.CDSCadastroTip_Codigo.AsString;
    FController.Model.CDSCadastroTip_Nome.AsString := obj.Model.CDSCadastroTip_Nome.AsString;

    FreeAndNil(obj);
  end;
  edtCodTipo.Modified := False;
  edtCodTipo.Modified := False;
end;

constructor TfrmTabPreco.create(APesquisar: Boolean);
begin
  inherited create(nil);
  FController := TTabPrecoController.Create;
  dsPesquisa.DataSet := FController.Model.CDSConsulta;
  dsCad.DataSet := FController.Model.CDSCadastro;
  dsItens.DataSet := FController.Model.CDSItens;

  FraProduto.Inicializar();
  FraStatus.Inicializar();
  FraTipo.Inicializar();

  BuscarIdTabelaPadrao();

  TGrade.RetornaCamposGrid(dbDados, cbbCampos);

  Localizar('');

  if APesquisar then
  begin
    cbbSituacao.ItemIndex := 0;
    Pesquisa := APesquisar;
  end;
end;

procedure TfrmTabPreco.dbDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    dbDadosDblClick(Self);
    if edtCodigo.Enabled then
      edtCodigo.SetFocus;
  end;
end;

procedure TfrmTabPreco.dbDadosTitleClick(Column: TColumn);
begin
  inherited;
  TFuncoes.OrdenarCamposGrid(FController.Model.cdsconsulta, Column.FieldName);
end;

procedure TfrmTabPreco.dbItensColExit(Sender: TObject);
var
  ModuloController: TModuloController;
begin
  inherited;
  if FController.Model.CDSItens.State in [dsEdit, dsInsert] then
  begin
    if dbItens.SelectedField.Name = 'CDSItensMod_Codigo' then
    begin
      ModuloController := TModuloController.Create;
      try
        try
        ModuloController.Pesquisar(0, FController.Model.CDSItensMod_Codigo.AsInteger);
        if ModuloController.Model.CDSCadastroMod_Id.AsInteger > 0 then
        begin
          FController.Model.CDSItensTabM_Modulo.AsInteger := ModuloController.Model.CDSCadastroMod_Id.AsInteger;
          FController.Model.CDSItensMod_Codigo.AsInteger := ModuloController.Model.CDSCadastroMod_Codigo.AsInteger;
          FController.Model.CDSItensMod_Nome.AsString := ModuloController.Model.CDSCadastroMod_Nome.AsString;
        end;
        except
          On E: Exception do
          begin
            FController.Model.CDSItensTabM_Modulo.Clear;
            FController.Model.CDSItensMod_Codigo.Clear;
            FController.Model.CDSItensMod_Nome.Clear;
            ShowMessage(E.Message);
          end;
        end;
      finally
        FreeAndNil(ModuloController);
      end;
    end;
  end;
end;

procedure TfrmTabPreco.dbItensDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  TGrade.Zebrar(dsItens.DataSet, dbItens, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmTabPreco.dbItensEditButtonClick(Sender: TObject);
begin
  inherited;
  AbrirTelaModulos();
end;

procedure TfrmTabPreco.dbItensEnter(Sender: TObject);
begin
  inherited;
  Self.KeyPreview := False;
end;

procedure TfrmTabPreco.dbItensExit(Sender: TObject);
begin
  inherited;
  if FController.Model.CDSItens.State in [dsEdit, dsInsert] then
  begin
    if FController.Model.CDSItensMod_Codigo.AsInteger = 0 then
      FController.Model.CDSItens.Cancel;

  end;
  Self.KeyPreview := True;
end;

procedure TfrmTabPreco.dbItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    TGrade.NavegarGridModeloII(1, 2, 1, dbItens, dsItens.DataSet);

  if Key = VK_INSERT then
    Key := 0;

  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    if dbItens.ReadOnly = False then
    begin
      dsItens.DataSet.Delete;
      dsCad.DataSet.Edit;
    end;
  end;

  if Key = VK_F9 then
  begin
    if dbItens.ReadOnly = False then
      AbrirTelaModulos();
  end;

  TeclasAtalho(Key);
  TGrade.DesabilitarTelcasDeleteGrid(Key, Shift);

end;

procedure TfrmTabPreco.DBMemo1Enter(Sender: TObject);
begin
  inherited;
  Self.KeyPreview := False;
end;

procedure TfrmTabPreco.DBMemo1Exit(Sender: TObject);
begin
  inherited;
  Self.KeyPreview := True;
end;

procedure TfrmTabPreco.DBMemo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  TeclasAtalho(Key);
end;

procedure TfrmTabPreco.dsItensStateChange(Sender: TObject);
begin
  inherited;
  if dsItens.DataSet.State in [dsEdit, dsInsert] then
  begin
    if btnSalvar.Enabled = False then
      btnSalvar.Enabled := True;
  end;
end;

procedure TfrmTabPreco.edtCodProdutoExit(Sender: TObject);
begin
  inherited;
  if edtCodProduto.Modified then
    BuscarProduto(0, StrToIntDef(edtCodProduto.Text,0));
end;

procedure TfrmTabPreco.edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F9 then
  begin
    if Sender = edtCodTipo then
      btnTipoClick(Self)
    else if Sender = edtCodProduto then
      btnProdutoClick(Self)
    else if Sender = edtCodStatus then
      btnStatusClick(Self);
  end;
end;

procedure TfrmTabPreco.edtCodStatusExit(Sender: TObject);
begin
  inherited;
  if edtCodStatus.Modified then
    BuscarStatus(0, StrToIntDef(edtCodStatus.Text,0));
end;

procedure TfrmTabPreco.edtCodTipoExit(Sender: TObject);
begin
  inherited;
  if edtCodTipo.Modified then
    BuscarTipo(0, StrToIntDef(edtCodTipo.Text, 0));
end;

procedure TfrmTabPreco.edtDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    Localizar(edtDescricao.Text);
end;

procedure TfrmTabPreco.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FController);
end;

procedure TfrmTabPreco.FormShow(Sender: TObject);
var
  Img: TfrmImagens;
begin
  inherited;

  Img := TfrmImagens.Create(Self);

  try
    btnProduto.Glyph := Img.btnProcurar.Glyph;
    btnTipo.Glyph := Img.btnProcurar.Glyph;
    btnStatus.Glyph := Img.btnProcurar.Glyph;
  finally
    FreeAndNil(Img);
  end;
end;

procedure TfrmTabPreco.FraStatusbtnProcClick(Sender: TObject);
begin
  inherited;
  FraStatus.TipoPrograma := uEnumerador.prTabelaPreco;
  FraStatus.btnProcClick(Sender);
end;

procedure TfrmTabPreco.FraStatusedtCodigoEnter(Sender: TObject);
begin
  inherited;
  FraStatus.TipoPrograma := uEnumerador.prTabelaPreco;
end;

procedure TfrmTabPreco.FraTipobtnProcClick(Sender: TObject);
begin
  inherited;
  FraTipo.TipoPrograma := uEnumerador.prTabelaPreco;
  FraTipo.btnProcClick(Sender);

end;

procedure TfrmTabPreco.FraTipoedtCodigoEnter(Sender: TObject);
begin
  inherited;
  FraTipo.TipoPrograma := uEnumerador.prTabelaPreco;
end;

procedure TfrmTabPreco.Localizar(ATexto: string);
var
  sCampo: string;
  sSituacao: string;
  bContem: Boolean;
  filtro: TTabPrecoFiltro;
begin
  filtro := TTabPrecoFiltro.Create;
  try
    filtro.ProdutoId := FraProduto.RetornoSelecao();
    filtro.StatusId := FraStatus.RetornoSelecao();
    filtro.TipoId := FraTipo.RetornoSelecao();

    sCampo := TGrade.FiltrarCampo(dbDados, cbbCampos);
    sSituacao := Copy(cbbSituacao.Items.Strings[cbbSituacao.ItemIndex], 1, 1);
    bContem := (cbbPesquisa.ItemIndex = 1);

    FController.Filtrar(sCampo, ATexto, sSituacao, filtro, bContem);
  finally
    FreeAndNil(filtro);
  end;
end;

procedure TfrmTabPreco.TeclasAtalho(var Key: Word);
begin
  if Key = VK_F8 then
  begin
    if btnSalvar.Enabled then
    begin
      btnSalvar.SetFocus;
      btnSalvar.Click;
    end;
  end;

  if Key = VK_ESCAPE then
    btnCancelar.Click;
end;

procedure TfrmTabPreco.tsProdutoShow(Sender: TObject);
begin
  inherited;
  FraProduto.edtCodigo.SetFocus;
end;

procedure TfrmTabPreco.tsStatusShow(Sender: TObject);
begin
  inherited;
  FraStatus.edtCodigo.SetFocus;
end;

procedure TfrmTabPreco.tsTipoShow(Sender: TObject);
begin
  inherited;
  FraTipo.edtCodigo.SetFocus;
end;

end.
