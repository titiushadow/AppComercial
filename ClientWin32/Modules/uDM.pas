unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TDMComercial = class(TDataModule)
    Conexao: TSQLConnection;
    QryProduto: TSQLQuery;
    DpsProduto: TDataSetProvider;
    CdsProduto: TClientDataSet;
    QryUsuario: TSQLQuery;
    DpsUsuario: TDataSetProvider;
    CdsUsuario: TClientDataSet;
    sdsPerfil: TSQLQuery;
    DpsPerfil: TDataSetProvider;
    CdsPerfil: TClientDataSet;
    sdsVendas: TSQLQuery;
    DpsVendas: TDataSetProvider;
    CdsVendas: TClientDataSet;
    QryCliente: TSQLQuery;
    DspCliente: TDataSetProvider;
    CdsCliente: TClientDataSet;
    CdsClienteCLIENTEID: TIntegerField;
    CdsClienteNOME: TStringField;
    CdsClienteENDERECO: TStringField;
    CdsClienteBAIRRO: TStringField;
    CdsClienteCIDADE: TStringField;
    CdsClienteCEP: TStringField;
    CdsClienteUF: TStringField;
    CdsClienteEMAIL: TStringField;
    CdsClienteTELEFONE: TStringField;
    CdsProdutoPRODUTOID: TIntegerField;
    CdsProdutoDESCRICAO: TStringField;
    CdsProdutoESTOQUE: TFMTBCDField;
    CdsProdutoPRECO: TFMTBCDField;
    CdsUsuarioUSUARIOID: TIntegerField;
    CdsUsuarioPREFILID: TIntegerField;
    CdsUsuarioNOME: TStringField;
    CdsUsuarioEMAIL: TStringField;
    CdsUsuarioLOGIN: TStringField;
    CdsUsuarioSENHA: TStringField;
    CdsUsuarioVENDEDOR: TStringField;
    CdsPerfilPREFILID: TIntegerField;
    CdsPerfilNOME: TStringField;
    CdsPerfilDESCRICAO: TStringField;
    CdsVendasVENDAID: TIntegerField;
    CdsVendasCLIENTEID: TIntegerField;
    CdsVendasUSUARIOID: TIntegerField;
    CdsVendasDATA: TDateField;
    sdsPerfilConf: TSQLDataSet;
    DsPerfil_PerfilConf: TDataSource;
    cdsPerfilConf: TClientDataSet;
    CdsPerfilsdsPerfilConf: TDataSetField;
    sdsItens: TSQLDataSet;
    DsVenda_itens: TDataSource;
    CdsVendassdsItens: TDataSetField;
    cdsItens: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function GenID(tablename: String): Integer;
    procedure GetID(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  DMComercial: TDMComercial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMComercial.DataModuleCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(ComponentCount) do
  begin
    if Components[I] is TClientDataSet then
    begin
      TClientDataSet(Components[I]).OnNewRecord := GetID;
    end;
  end;
end;

function TDMComercial.GenID(tablename: string): Integer;
var
    Qry: TSQLQuery;
begin
  Qry := TSQLQuery.Create(Self);
  Qry.SQLConnection := Conexao;
  Qry.SQL.Add('SELECT GEN_ID(GEN_'+tablename+'_ID,1) FROM RDB$DATABASE');
  Qry.Open;
  Result := Qry.Fields[0].AsInteger;
end;

procedure TDMComercial.GetID(DataSet: TDataSet);
begin
  DataSet.Fields[0].AsInteger := GenID(copy(DataSet.Name, 4));
end;

end.
