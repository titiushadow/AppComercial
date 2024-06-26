unit uFrmPerfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Data.DB, Vcl.Menus,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Mask, Vcl.DBCtrls;

type
  TTipoPermissao = (tpCheck, tpUncheck, tpInvert);
  TFrmPerfil = class(TFrmModelo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DsDetail: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
  private
    { Private declarations }
    FAcoes: TCustomActionList;
    procedure LoadDefaut;
  public
    { Public declarations }
    constructor Create (Aowner: TComponent;
    ActionList: TCustomActionList); reintroduce;
  end;

var
  FrmPerfil: TFrmPerfil;

implementation

{$R *.dfm}

uses uDM, Datasnap.DBClient;

constructor TFrmPerfil.Create(AOwner: TComponent; ActionList: TCustomActionList);
begin
  inherited Create(AOwner);
  FAcoes := ActionList;
end;

procedure TFrmPerfil.LoadDefaut;
var
  I: Integer;

begin
  TClientDataSet(DsDetail.DataSet).EmptyDataSet;
  for I := 0 to Pred(FAcoes.ActionCount) do
  begin
    with DsDetail.DataSet do
    begin
      Append;
      FieldByName('NAME').AsString := TAction(FAcoes.Actions[I]).Name;
      FieldByName('CAPTION').AsString := TAction(FAcoes.Actions[I]).Caption;
      FieldByName('PERMISSAO').AsString := 'F';
      Post;
    end;
  end;
end;

end.
