unit Frm_Invoice_Manager_Main_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids,DM_Invoice,Frm_Capture_U;

type
  Tfrmmain = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    ViewInvoice1: TMenuItem;
    ViewInvoice2: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Help1: TMenuItem;
    Settings1: TMenuItem;
    DatabaseBackup1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    AutoBackup1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Backup1: TMenuItem;
    N10: TMenuItem;
    lbl1: TLabel;
    dbgrdmain: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure ViewInvoice1Click(Sender: TObject);
    procedure ViewInvoice2Click(Sender: TObject);
    procedure File2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmain: Tfrmmain;

implementation

{$R *.dfm}

procedure Tfrmmain.File2Click(Sender: TObject);
begin
 frmcapture.ShowModal; //shows the capture form
end;

procedure Tfrmmain.FormShow(Sender: TObject);
begin
 With DataModuleInvoice do
 begin
   if tblinvoice.Active = True then
   begin
    //here we will connect the database
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer');
   end;
 end;
end;

procedure Tfrmmain.ViewInvoice1Click(Sender: TObject);
begin
 //here we will open the form to allow them to seacrh for an invoice
end;

procedure Tfrmmain.ViewInvoice2Click(Sender: TObject);
begin
 //print the currently saved invoice , or save it
end;

end.
