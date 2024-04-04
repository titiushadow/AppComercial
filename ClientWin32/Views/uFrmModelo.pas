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
    Btn_consultar: TBitBtn;
    lbl_cbx: TLabel;
    lbl_pesquisa: TLabel;
    Ds: TDataSource;
    Campo_cbx_pesquisa: TComboBox;
    ac_adicionar: TAction;
    ac_excluir: TAction;
    ac_visualizar: TAction;
    ac_editar: TAction;
    ac_imprimir: TAction;
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
    procedure ac_adicionarExecute(Sender: TObject);
    procedure ac_excluirExecute(Sender: TObject);
    procedure ac_editarExecute(Sender: TObject);
    procedure ac_imprimirExecute(Sender: TObject);
    procedure ac_salvarExecute(Sender: TObject);
    procedure ac_removerExecute(Sender: TObject);
    procedure ac_sairExecute(Sender: TObject);
    procedure ac_visualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModelo: TFrmModelo;

implementation

uses
  Datasnap.DBClient;

{$R *.dfm}

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
  Ds.DataSet.Delete;

  if Ds.DataSet is TClientDataSet then
    TClientDataSet(Ds.DataSet).ApplyUpdates(0);
end;

// Editar
procedure TFrmModelo.ac_editarExecute(Sender: TObject);
begin
  PageControl1.ActivePage := tbCadastro;
  dS.DataSet.Edit;

  if PageControl1.ActivePage = tbConsulta then
    PageControl1.ActivePage := tbCadastro
  else
    PageControl1.ActivePage := tbConsulta;
end;

// Visualizar
procedure TFrmModelo.ac_visualizarExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = tbConsulta then
    PageControl1.ActivePage := tbCadastro
  else
    PageControl1.ActivePage := tbConsulta;
end;

// Imprimir
procedure TFrmModelo.ac_imprimirExecute(Sender: TObject);
begin
  ShowMessage('a');
end;

// Remover
procedure TFrmModelo.ac_removerExecute(Sender: TObject);
begin
  TClientDataSet(Ds.DataSet).CancelUpdates(0);
  PageControl1.ActivePage := tbConsulta;
end;

// Salvar
procedure TFrmModelo.ac_salvarExecute(Sender: TObject);
begin
  TClientDataSet(Ds.DataSet).ApplyUpdates(0);
  PageControl1.ActivePage := tbConsulta;
end;

// Sair
procedure TFrmModelo.ac_sairExecute(Sender: TObject);
begin
  Close;
end;

end.
