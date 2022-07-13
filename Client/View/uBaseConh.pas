unit uBaseConh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, uDMBaseConh,
  uBaseConhController, Vcl.Mask, Vcl.DBCtrls, uFuncoesSIDomper, Vcl.OleCtnrs,
  uFraUsuario, uFraTipo, uFraStatus, uFraModulo, uFraProduto, uEnumerador,
  uPosicaoBotao, uBaseConhDetalhe, uParametrosController, uDepartamentoController;

type
  TfrmBaseConh = class(TfrmBaseCadastro)
    PageControl1: TPageControl;
    tsPrincipal: TTabSheet;
    Panel7: TPanel;
    edtCodigo: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    edtData: TDBEdit;
    edtCodProduto: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    btnProduto: TSpeedButton;
    edtCodUsuario: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    edtNome: TDBEdit;
    Label11: TLabel;
    edtCodTipo: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    btnTipo: TSpeedButton;
    edtCodStatus: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    btnStatus: TSpeedButton;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    edtNomeArquivo: TDBEdit;
    btnAnexar: TSpeedButton;
    btnVisualizar: TSpeedButton;
    dlgAbrirArquivo: TOpenDialog;
    tsFiltroModulo: TTabSheet;
    Panel8: TPanel;
    tsFiltroUsuario: TTabSheet;
    Panel9: TPanel;
    FraUsuario: TFraUsuario;
    tsFiltroTipo: TTabSheet;
    tsFiltroStatus: TTabSheet;
    Panel10: TPanel;
    Panel11: TPanel;
    FraTipo: TFraTipo;
    FraStatus: TFraStatus;
    Label39: TLabel;
    edtDataInicial: TMaskEdit;
    edtDataFinal: TMaskEdit;
    Label40: TLabel;
    edtCodModulo: TDBEdit;
    DBEdit3: TDBEdit;
    btnModulo: TSpeedButton;
    Label5: TLabel;
    FraModulo: TFraModulo;
    lblMensagem: TLabel;
    btnDetalhes: TBitBtn;
    btnDetalhes2: TBitBtn;
    procedure btnAnexarClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
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
    procedure btnModuloClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnTipoClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure cbbCamposChange(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodModuloExit(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift:
        TShiftState);
    procedure edtCodStatusExit(Sender: TObject);
    procedure edtCodTipoExit(Sender: TObject);
    procedure edtCodUsuarioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbDadosTitleClick(Column: TColumn);
    procedure FraStatusbtnProcClick(Sender: TObject);
    procedure FraTipobtnProcClick(Sender: TObject);
    procedure FraStatusedtCodigoEnter(Sender: TObject);
    procedure FraTipoedtCodigoEnter(Sender: TObject);
    procedure btnDetalhesClick(Sender: TObject);
    procedure btnDetalhes2Click(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
  private
    { Private declarations }
    FController: TBaseConhController;
    FCaminhoAnexo: string;
    procedure Localizar(ATexto: string);

    procedure BuscarUsuario(AId, ACodigo: Integer);
    procedure BuscarTipo(AId, ACodigo: Integer);
    procedure BuscarStatus(AId, ACodigo: Integer);
    procedure BuscarModulo(AId, ACodigo: Integer);
    procedure BuscarProduto(AId, ACodigo: Integer);
    procedure BuscarObservacao;
    procedure PosicaoBotoes;
    procedure BuscarDetalhes(AId: Integer);
    procedure CaminhoAnexos();
    procedure MostrarAnexo();
  public
    { Public declarations }
    constructor create(APesquisar: Boolean = False);
  end;

var
  frmBaseConh: TfrmBaseConh;

implementation

{$R *.dfm}

uses uGrade, uDM, uImagens,
  uUsuarioController, uTipo, uTipoController, uStatusController, uStatus,
  uFiltroBaseConhecimento, uModuloController, uClienteModuloController,
  uProdutoController, uProduto, uModulo, uObservacao, uObsevacaoController;

procedure TfrmBaseConh.btnDetalhes2Click(Sender: TObject);
begin
  inherited;
  BuscarDetalhes(FController.Model.CDSCadastroBas_Id.AsInteger);
end;

procedure TfrmBaseConh.btnDetalhesClick(Sender: TObject);
begin
  inherited;
  BuscarDetalhes(FController.Model.CDSConsultaBas_Id.AsInteger);
end;

procedure TfrmBaseConh.btnEditarClick(Sender: TObject);
begin
  FController.Editar(dbDados.Columns[0].Field.AsInteger, Self);
  inherited;
  if edtNome.Enabled then
    edtNome.SetFocus;
end;

procedure TfrmBaseConh.btnExcluirClick(Sender: TObject);
begin
  if TFuncoes.Confirmar('Excluir Registro?') then
  begin
    FController.Excluir(dm.IdUsuario, dbDados.Columns[0].Field.AsInteger);
    inherited;
  end;
end;

procedure TfrmBaseConh.btnFecharEdicaoClick(Sender: TObject);
begin
  FController.Cancelar;
  inherited;
end;

procedure TfrmBaseConh.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  edtDataInicial.SetFocus;
end;

procedure TfrmBaseConh.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Localizar(edtDescricao.Text);
end;

procedure TfrmBaseConh.btnImprimirClick(Sender: TObject);
begin
  FController.Imprimir(dm.IdUsuario);
  inherited;
end;

procedure TfrmBaseConh.btnNovoClick(Sender: TObject);
begin
  FController.Novo(dm.IdUsuario);
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmBaseConh.btnSalvarClick(Sender: TObject);
begin
  FController.Salvar(dm.IdUsuario);
  FController.FiltrarCodigo(FController.CodigoAtual());
  inherited;
end;

procedure TfrmBaseConh.BuscarDetalhes(AId: Integer);
var
  form: TfrmBaseConhDetalhe;
begin
  if AId = 0 then
    raise Exception.Create('N�o h� Itens para Detalhes!');

  form := TfrmBaseConhDetalhe.create(AId);
  form.ShowModal;
  form.Free;
end;

procedure TfrmBaseConh.BuscarModulo(AId, ACodigo: Integer);
var
  obj: TModuloController;
  ClienteModulo: TClienteModuloController;
begin
  obj := TModuloController.Create;
  try
    try
      obj.Pesquisar(AId, ACodigo);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        edtCodModulo.SetFocus;
      end;
    end;
  finally
    FController.ModoEdicaoInsercao();
    FController.Model.CDSCadastroBas_Modulo.AsString := obj.Model.CDSCadastroMod_Id.AsString;
    FController.Model.CDSCadastroMod_Codigo.AsString := obj.Model.CDSCadastroMod_Codigo.AsString;
    FController.Model.CDSCadastroMod_Nome.AsString := obj.Model.CDSCadastroMod_Nome.AsString;

    FreeAndNil(obj);
  end;

  edtCodModulo.Modified := False;
  edtCodProduto.Modified := False;
end;

procedure TfrmBaseConh.BuscarObservacao;
var
  obs: TObservacaoController;
begin
  if edtNome.Enabled = False then
    Exit;

  TFuncoes.CriarFormularioModal(TfrmObservacao.create(true, prBase));
  if dm.IdSelecionado > 0 then
  begin
    FController.ModoEdicaoInsercao;
    obs := TObservacaoController.Create;
    try
      obs.LocalizarId(dm.IdSelecionado);
      FController.Model.CDSCadastroBas_Descricao.AsString :=
      FController.Model.CDSCadastroBas_Descricao.AsString + ' ' + obs.Model.CDSCadastroObs_Descricao.AsString;
    finally
      FreeAndNil(obs);
    end;
  end;
end;

procedure TfrmBaseConh.BuscarProduto(AId, ACodigo: Integer);
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
    FController.Model.CDSCadastroBas_Produto.AsString := obj.Model.CDSCadastroProd_Id.AsString;
    FController.Model.CDSCadastroProd_Codigo.AsString := obj.Model.CDSCadastroProd_Codigo.AsString;
    FController.Model.CDSCadastroProd_Nome.AsString := obj.Model.CDSCadastroProd_Nome.AsString;

    FreeAndNil(obj);
  end;
  edtCodProduto.Modified := False;
end;

procedure TfrmBaseConh.BuscarStatus(AId, ACodigo: Integer);
var
  obj: TStatusController;
begin
  obj := TStatusController.Create;
  try
    try
      obj.Pesquisar(AId, ACodigo, TEnumPrograma.prBase);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        edtCodStatus.SetFocus;
      end;
    end;
  finally
    FController.ModoEdicaoInsercao();
    FController.Model.CDSCadastroBas_Status.AsString := obj.Model.CDSCadastroSta_Id.AsString;
    FController.Model.CDSCadastroSta_Codigo.AsString := obj.Model.CDSCadastroSta_Codigo.AsString;
    FController.Model.CDSCadastroSta_Nome.AsString := obj.Model.CDSCadastroSta_Nome.AsString;

    FreeAndNil(obj);
  end;
  edtCodStatus.Modified := False;
end;

procedure TfrmBaseConh.BuscarTipo(AId, ACodigo: Integer);
var
  obj: TTipoController;
begin
  obj := TTipoController.Create;
  try
    try
      obj.Pesquisar(AId, ACodigo, prBase);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        edtCodTipo.SetFocus;
      end;
    end;
  finally
    FController.ModoEdicaoInsercao();
    FController.Model.CDSCadastroBas_Tipo.AsString := obj.Model.CDSCadastroTip_Id.AsString;
    FController.Model.CDSCadastroTip_Codigo.AsString := obj.Model.CDSCadastroTip_Codigo.AsString;
    FController.Model.CDSCadastroTip_Nome.AsString := obj.Model.CDSCadastroTip_Nome.AsString;

    FreeAndNil(obj);
  end;
  edtCodTipo.Modified := False;
end;

procedure TfrmBaseConh.BuscarUsuario(AId, ACodigo: Integer);
var
  obj: TUsuarioController;
begin
  obj := TUsuarioController.Create;
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
    FController.ModoEdicaoInsercao();
    FController.Model.CDSCadastroBas_Usuario.AsString := obj.Model.CDSCadastroUsu_Id.AsString;
    FController.Model.CDSCadastroUsu_Codigo.AsString := obj.Model.CDSCadastroUsu_Codigo.AsString;
    FController.Model.CDSCadastroUsu_Nome.AsString := obj.Model.CDSCadastroUsu_Nome.AsString;

    FreeAndNil(obj);
  end;
  edtCodUsuario.Modified := False;
end;

procedure TfrmBaseConh.CaminhoAnexos;
var
  parametros: TParametrosController;
begin
  parametros := TParametrosController.Create;
  try
    FCaminhoAnexo := parametros.CaminhoAnexos();
  finally
    FreeAndNil(parametros);
  end;
end;

constructor TfrmBaseConh.create(APesquisar: Boolean);
begin
  inherited create(nil);
  FController := TBaseConhController.Create;
  dsPesquisa.DataSet := FController.Model.CDSConsulta;
  dsCad.DataSet := FController.Model.CDSCadastro;

  TGrade.RetornaCamposGrid(dbDados, cbbCampos);
  cbbCampos.ItemIndex := 2;
  Localizar('ABCDE'); // para trazer vazio

  if APesquisar then
  begin
    cbbSituacao.ItemIndex := 0;
    Pesquisa := APesquisar;
  end;

  FraModulo.Inicializar();
  FraUsuario.Inicializar();
  FraTipo.Inicializar();
  FraStatus.Inicializar();
end;

procedure TfrmBaseConh.btnAnexarClick(Sender: TObject);
begin
  inherited;

  dlgAbrirArquivo.InitialDir := FCaminhoAnexo;
  if dlgAbrirArquivo.Execute then
  begin
    if Trim(dlgAbrirArquivo.FileName) = '' then
      raise Exception.Create('Informe o Nome do Arquivo.');

    FController.ModoEdicaoInsercao;
    FController.Model.CDSCadastroBas_Anexo.AsString := dlgAbrirArquivo.FileName;
  end;
end;

procedure TfrmBaseConh.btnProdutoClick(Sender: TObject);
begin
  inherited;
  TFuncoes.CriarFormularioModal(TfrmProduto.create(true));
  if dm.IdSelecionado > 0 then
    BuscarProduto(dm.IdSelecionado, 0);
end;

procedure TfrmBaseConh.btnModuloClick(Sender: TObject);
begin
  inherited;
  TFuncoes.CriarFormularioModal(TfrmModulo.create(true));
  if dm.IdSelecionado > 0 then
    BuscarModulo(dm.IdSelecionado, 0);
end;

procedure TfrmBaseConh.btnStatusClick(Sender: TObject);
begin
  inherited;
  TFuncoes.CriarFormularioModal(TfrmStatus.create(TEnumPrograma.prBase, true));
  if dm.IdSelecionado > 0 then
    BuscarStatus(dm.IdSelecionado, 0);
end;

procedure TfrmBaseConh.btnTipoClick(Sender: TObject);
begin
  inherited;
  TFuncoes.CriarFormularioModal(TfrmTipo.create(prBase, true));
  if dm.IdSelecionado > 0 then
    BuscarTipo(dm.IdSelecionado, 0);
end;

procedure TfrmBaseConh.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  TFuncoes.VisualizarArquivo(edtNomeArquivo.Text);
end;

procedure TfrmBaseConh.cbbCamposChange(Sender: TObject);
begin
  inherited;
  lblMensagem.Visible := TFuncoes.MostrarDescricaoPesquisaData(cbbCampos.Text);
end;

procedure TfrmBaseConh.dbDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    dbDadosDblClick(Self);
    if edtCodigo.Enabled then
      edtCodigo.SetFocus;
  end;
end;

procedure TfrmBaseConh.dbDadosTitleClick(Column: TColumn);
begin
  inherited;
  TFuncoes.OrdenarCamposGrid(FController.Model.cdsconsulta, Column.FieldName);
end;

procedure TfrmBaseConh.DBMemo1Enter(Sender: TObject);
begin
  inherited;
  Self.KeyPreview := False;
end;

procedure TfrmBaseConh.DBMemo1Exit(Sender: TObject);
begin
  inherited;
  Self.KeyPreview := True;
end;

procedure TfrmBaseConh.DBMemo1KeyDown(Sender: TObject; var Key: Word; Shift:
    TShiftState);
begin
  inherited;
  if Key = VK_F8 then
  begin
    if btnSalvar.Enabled then
    begin
      btnSalvar.SetFocus;
      btnSalvarClick(Self);
    end;
  end;

  if Key = VK_F9 then
    BuscarObservacao();

  if Key = VK_ESCAPE then
    btnCancelarClick(Self);
end;

procedure TfrmBaseConh.edtCodModuloExit(Sender: TObject);
begin
  inherited;
  if edtCodModulo.Modified then
    BuscarModulo(0, StrToIntDef(edtCodModulo.Text, 0));
end;

procedure TfrmBaseConh.edtCodProdutoExit(Sender: TObject);
begin
  inherited;
  if edtCodProduto.Modified then
    BuscarProduto(0, StrToIntDef(edtCodProduto.Text,0));
end;

procedure TfrmBaseConh.edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
  inherited;
  if Key = VK_F9 then
  begin
    if Sender = edtCodTipo then
      btnTipoClick(Self)
    else if Sender = edtCodModulo then
      btnModuloClick(Self)
    else if Sender = edtCodProduto then
      btnProdutoClick(Self)
    else if Sender = edtCodStatus then
      btnStatusClick(Self);
  end;
end;

procedure TfrmBaseConh.edtCodStatusExit(Sender: TObject);
begin
  inherited;
  if edtCodStatus.Modified then
    BuscarStatus(0, StrToIntDef(edtCodStatus.Text,0));
end;

procedure TfrmBaseConh.edtCodTipoExit(Sender: TObject);
begin
  inherited;
  if edtCodTipo.Modified then
    BuscarTipo(0, StrToIntDef(edtCodTipo.Text, 0));
end;

procedure TfrmBaseConh.edtCodUsuarioExit(Sender: TObject);
begin
  inherited;
  if edtCodUsuario.Modified then
    BuscarUsuario(0, StrToIntDef(edtCodUsuario.Text, 0));
end;

procedure TfrmBaseConh.edtDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    Localizar(edtDescricao.Text);
end;

procedure TfrmBaseConh.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FController);
end;

procedure TfrmBaseConh.FormShow(Sender: TObject);
var
  Img: TfrmImagens;
begin
  inherited;
  Img := TfrmImagens.Create(Self);
  try
    btnProduto.Glyph := Img.btnProcurar.Glyph;
    btnModulo.Glyph := Img.btnProcurar.Glyph;
    btnTipo.Glyph := Img.btnProcurar.Glyph;
    btnStatus.Glyph := Img.btnProcurar.Glyph;
    btnAnexar.Glyph := Img.btnAnexar.Glyph;
    btnVisualizar.Glyph := Img.btnExportar.Glyph;
    btnDetalhes.Glyph := Img.btnDetalhe.Glyph;
    btnDetalhes2.Glyph := Img.btnDetalhe.Glyph;
  finally
    FreeAndNil(Img);
  end;

  PosicaoBotoes();

  CaminhoAnexos();
  MostrarAnexo();
end;

procedure TfrmBaseConh.FraStatusbtnProcClick(Sender: TObject);
begin
  inherited;
  FraStatus.TipoPrograma := prBase;
  FraStatus.btnProcClick(Sender);
end;

procedure TfrmBaseConh.FraStatusedtCodigoEnter(Sender: TObject);
begin
  inherited;
  FraStatus.TipoPrograma := prBase;
end;

procedure TfrmBaseConh.FraTipobtnProcClick(Sender: TObject);
begin
  inherited;
  FraTipo.TipoPrograma := prBase;
  FraTipo.btnProcClick(Sender);
end;

procedure TfrmBaseConh.FraTipoedtCodigoEnter(Sender: TObject);
begin
  inherited;
  FraTipo.TipoPrograma := prBase;
end;

procedure TfrmBaseConh.Localizar(ATexto: string);
var
  sCampo: string;
  sSituacao: string;
  bContem: Boolean;
  Filtro: TFiltroBaseConhecimento;
begin

  Filtro := TFiltroBaseConhecimento.Create;
  try
    Filtro.DataInicial := edtDataInicial.Text;
    Filtro.DataFinal := edtDataFinal.Text;
    Filtro.IdTipo := FraTipo.RetornoSelecao();
    Filtro.IdStatus := FraStatus.RetornoSelecao();
    Filtro.IdUsuario := FraUsuario.RetornoSelecao();
    Filtro.IdModulo := FraModulo.RetornoSelecao();

    sCampo := TGrade.FiltrarCampo(dbDados, cbbCampos);
    sSituacao := Copy(cbbSituacao.Items.Strings[cbbSituacao.ItemIndex], 1, 1);
    bContem := (cbbPesquisa.ItemIndex = 1);

    FController.FiltrarBaseConh(Filtro, sCampo, ATexto, dm.IdUsuario, bContem);
    FController.Model.CDSConsulta.IndexFieldNames := sCampo;
  finally
    FreeAndNil(Filtro);
  end;

end;

procedure TfrmBaseConh.MostrarAnexo;
var
  Departamento: TDepartamentoController;
  bResultado: Boolean;
begin
  Departamento := TDepartamentoController.Create;
  try
    bResultado := Departamento.MostrarAnexos();
    Label15.Visible := bResultado;
    edtNomeArquivo.Visible := bResultado;
    btnAnexar.Visible := bResultado;
    btnVisualizar.Visible := bResultado;
  finally
    FreeAndNil(Departamento);
  end;
end;

procedure TfrmBaseConh.PosicaoBotoes;
var
  botao: TPosicaoBotao;
begin
  botao := TPosicaoBotao.Create(btnPrimeiro, 6, 6, true);
  try
    botao.PosicaoBotaoNavegacao(btnAnterior);
    botao.PosicaoBotaoNavegacao(btnProximo);
    botao.PosicaoBotaoNavegacao(btnUltimo);

    botao.PosicaoBotao(btnNovo);
    botao.PosicaoBotao(btnEditar);
    botao.PosicaoBotao(btnExcluir);
    botao.PosicaoBotao(btnFiltrar);
    botao.PosicaoBotao(btnDetalhes);
    botao.PosicaoBotao(btnSair);
  finally
    FreeAndNil(botao);
  end;

  botao := TPosicaoBotao.Create(btnSalvar, 6, 6);
  try
    botao.PosicaoBotao(btnCancelar);
    botao.PosicaoBotao(btnDetalhes2);
  finally
    FreeAndNil(botao);
  end;

//------------------------------------------------------------------------------
// filtro
  Botao := TPosicaoBotao.Create(btnFiltro, 6, 6);
  try
    Botao.PosicaoBotao(btnImprimir);
    Botao.PosicaoBotao(btnFecharFiltro);
  finally
    FreeAndNil(Botao);
  end;

end;

end.
