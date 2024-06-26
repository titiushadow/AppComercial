unit uFrmModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmModelo = class(TForm)
    ImageList1: TImageList;
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Aes1: TMenuItem;
    acadicionar1: TMenuItem;
    aceditar1: TMenuItem;
    acremover1: TMenuItem;
    acpesquisar1: TMenuItem;
    acimprimir1: TMenuItem;
    N1: TMenuItem;
    PageControl1: TPageControl;
    tbCadastro: TTabSheet;
    tbConsulta: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Campo_pesquisa: TEdit;
    lbl_cbx: TLabel;
    lbl_pesquisa: TLabel;
    Ds: TDataSource;
    Campo_cbx_pesquisa: TComboBox;
    ac_adicionar: TAction;
    ac_excluir: TAction;
    ac_visualizar: TAction;
    ac_editar: TAction;
    ac_remover: TAction;
    ac_salvar: TAction;
    ac_sair: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton3: TToolButton;
    BtnPesquisar: TBitBtn;
    Label3: TLabel;
    ac_imprimir: TAction;
    procedure ac_adicionarExecute(Sender: TObject);
    procedure ac_excluirExecute(Sender: TObject);
    procedure ac_editarExecute(Sender: TObject);
    procedure ac_imprimirExecute(Sender: TObject);
    procedure ac_salvarExecute(Sender: TObject);
    procedure ac_removerExecute(Sender: TObject);
    procedure ac_sairExecute(Sender: TObject);
    procedure ac_visualizarExecute(Sender: TObject);
    procedure ac_excluirUpdate(Sender: TObject);
    procedure ac_salvarUpdate(Sender: TObject);
    procedure Campo_pesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
    protected
  { Protected declarations }
  procedure limparFormulario; virtual;
  public
    { Public declarations }
  end;


var
  FrmModelo: TFrmModelo;

implementation

uses
  Datasnap.DBClient, uDM;

{$R *.dfm}

procedure TFrmModelo.ac_excluirUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Ds.DataSet.State in [dsInactive,dsBrowse];
end;

// Adicionar
procedure TFrmModelo.ac_adicionarExecute(Sender: TObject);
begin
  PageControl1.ActivePage := tbCadastro;
  if not Ds.DataSet.Active then
    Ds.DataSet.Open;
  Ds.DataSet.Insert;
end;

// Excluir
procedure TFrmModelo.ac_excluirExecute(Sender: TObject);
begin
  if not Ds.DataSet.IsEmpty then
  begin
  Ds.DataSet.Delete;
  if Ds.DataSet is TClientDataSet then
    TClientDataSet(Ds.DataSet).ApplyUpdates(0);
  end;
end;

// Editar
procedure TFrmModelo.ac_editarExecute(Sender: TObject);
begin
  if Ds.DataSet.Active then
  begin
    PageControl1.ActivePage := tbCadastro;
    Ds.DataSet.Edit;
  end;
end;

// Visualizar
procedure TFrmModelo.ac_visualizarExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = tbConsulta then
    PageControl1.ActivePage := tbCadastro
  else
    PageControl1.ActivePage := tbConsulta;
end;

// Campo pesquisa
procedure TFrmModelo.Campo_pesquisaChange(Sender: TObject);
begin
  if (Campo_cbx_pesquisa.Text <> EmptyStr) and
       (Campo_pesquisa.Text <> EmptyStr) then
  begin
    Ds.DataSet.Filter   := 'Upper('+Campo_cbx_pesquisa.Text+') like '+QuotedStr(UpperCase(Campo_pesquisa.Text)+'%');
    Ds.DataSet.Filtered := True;
    if not Ds.DataSet.Active then
      Ds.DataSet.Open;
  end;
end;

procedure TFrmModelo.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(Ds.DataSet.FieldCount) do
  begin
    if Ds.DataSet.Fields[I].DataType in [ftString,ftWideString,ftFixedChar] then
      Campo_cbx_pesquisa.Items.Add(Ds.DataSet.Fields[I].FieldName);
  end;
end;

// Imprimir
procedure TFrmModelo.ac_imprimirExecute(Sender: TObject);
begin
  ShowMessage('Implementa��o Futura');
end;

// Remover
procedure TFrmModelo.ac_removerExecute(Sender: TObject);
begin
  TClientDataSet(Ds.DataSet).CancelUpdates();
  PageControl1.ActivePage := tbConsulta;
end;

// Salvar
procedure TFrmModelo.ac_salvarExecute(Sender: TObject);
begin
  TClientDataSet(Ds.DataSet).ApplyUpdates(0);
  limparFormulario;

  PageControl1.ActivePage := tbConsulta;
end;

procedure TFrmModelo.ac_salvarUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Ds.DataSet.State in [dsInsert,dsEdit];
  Label3.Visible := Ds.DataSet.Filtered;
end;

// Sair
procedure TFrmModelo.ac_sairExecute(Sender: TObject);
begin
  Close;
end;

// Desativar filtro
procedure TFrmModelo.Label3Click(Sender: TObject);
begin
  Ds.DataSet.Filtered := False;
  LimparFormulario;
end;

// Limpar campos ap�s envio
procedure TFrmModelo.limparFormulario;
var
  I: Integer;
begin
  // Percorre todos os campos do formulario
  for I := 0 to ComponentCount - 1 do
  begin
    // Verifica se � um TEdit
    if Components[I] is TEdit then
      // Se for ele limpa o campo
      TEdit(Components[I]).Clear

      // Se for um checkbox muda para disable
    else if Components[I] is TComboBox then
      TComboBox(Components[I]).ItemIndex := -1;
  end;
end;
end.
