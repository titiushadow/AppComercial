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
    QryPerfil: TSQLQuery;
    DpsPerfil: TDataSetProvider;
    CdsPerfil: TClientDataSet;
    QryVendas: TSQLQuery;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMComercial: TDMComercial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
