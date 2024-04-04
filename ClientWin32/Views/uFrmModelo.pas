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
    ac_adicionar: TAction;
    ac_remover: TAction;
    ac_editar: TAction;
    ac_pesquisar: TAction;
    ac_imprimir: TAction;
    Action6: TAction;
    Action8: TAction;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Aes1: TMenuItem;
    acadicionar1: TMenuItem;
    aceditar1: TMenuItem;
    acremover1: TMenuItem;
    acpesquisar1: TMenuItem;
    acimprimir1: TMenuItem;
    N1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    PageControl1: TPageControl;
    tbCadastro: TTabSheet;
    tbConsulta: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Btn_consultar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModelo: TFrmModelo;

implementation

{$R *.dfm}

end.
