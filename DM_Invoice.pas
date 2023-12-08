unit DM_Invoice;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModuleInvoice = class(TDataModule)
    coninvoice: TADOConnection;
    tblinvoice: TADOTable;
    dsinvoice: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleInvoice: TDataModuleInvoice;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
