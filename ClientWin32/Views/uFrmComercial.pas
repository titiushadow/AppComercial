unit uFrmComercial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.CustomizeDlg, Vcl.Menus,
  Vcl.ActnColorMaps, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmComercial = class(TForm)
    Acoes: TActionManager;
    Images: TImageList;
    ac_cliente: TAction;
    ac_produto: TAction;
    ac_usuario: TAction;
    ac_sair: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    ac_movimento_diario: TAction;
    ac_venda: TAction;
    ac_lista_clientes: TAction;
    ac_vendas_por_dia: TAction;
    ac_bloco_notas: TAction;
    Calculadora: TAction;
    Calendario: TAction;
    Internet: TAction;
    ac_perfil: TAction;
    ac_logoff: TAction;
    ac_help: TAction;
    ac_sobre_sistema: TAction;
    BarraPadrao: TActionToolBar;
    Popup: TPopupMenu;
    CustomizeDlg: TCustomizeDlg;
    Personalizar1: TMenuItem;
    XPColorMap1: TXPColorMap;
    Image1: TImage;
    procedure Personalizar1Click(Sender: TObject);
    procedure ac_produtoExecute(Sender: TObject);
    procedure ac_clienteExecute(Sender: TObject);
    procedure ac_usuarioExecute(Sender: TObject);
    procedure ac_sairExecute(Sender: TObject);
    procedure ac_perfilExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComercial: TFrmComercial;

implementation

{$R *.dfm}

uses uFrmProdutos, uFrmClientes, uFrmUsuario, uFrmPerfil;

// Tela do Cliente
procedure TFrmComercial.ac_clienteExecute(Sender: TObject);
begin
  try
    FrmClientes := TFrmClientes.Create(Self);
    FrmClientes.ShowModal;
  finally
    FrmClientes.Free;
  end;
end;

// Tela de produtos
procedure TFrmComercial.ac_perfilExecute(Sender: TObject);
begin
  try
    FrmPerfil := TFrmPerfil.Create(Self, Acoes);
    FrmPerfil.ShowModal;
  finally
    FrmPerfil.Free;
  end;
end;

procedure TFrmComercial.ac_produtoExecute(Sender: TObject);
begin
  try
    FrmProdutos := TFrmProdutos.Create(Self);
    FrmProdutos.ShowModal;
  finally
    FrmProdutos.Free;
  end;
end;

// Tela do Usuario
procedure TFrmComercial.ac_usuarioExecute(Sender: TObject);
begin
  try
    FrmUsuario := TFrmUsuario.Create(Self);
    FrmUsuario.ShowModal;
  finally
    FrmUsuario.Free;
  end;
end;

// Sair do sistema
procedure TFrmComercial.ac_sairExecute(Sender: TObject);
begin
  Close;
end;


procedure TFrmComercial.Personalizar1Click(Sender: TObject);
begin
  CustomizeDlg.Show;
end;

end.
