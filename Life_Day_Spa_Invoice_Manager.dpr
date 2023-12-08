program Life_Day_Spa_Invoice_Manager;

uses
  Vcl.Forms,
  Frm_Invoice_Manager_Main_U in 'Frm_Invoice_Manager_Main_U.pas' {frmmain},
  DM_Invoice in 'DM_Invoice.pas' {DataModuleInvoice: TDataModule},
  Frm_Capture_U in 'Frm_Capture_U.pas' {frmcapture};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmmain, frmmain);
  Application.CreateForm(TDataModuleInvoice, DataModuleInvoice);
  Application.CreateForm(Tfrmcapture, frmcapture);
  Application.Run;
end.
