unit Frm_Capture_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls;

type
  Tfrmcapture = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Help1: TMenuItem;
    pnl2: TPanel;
    pnl3: TPanel;
    il1: TImageList;
    btnupload: TButton;
    btnsaveinvoice: TButton;
    btncancel: TButton;
    btnexit: TButton;
    flpndlg1: TFileOpenDialog;
    procedure btnuploadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcapture: Tfrmcapture;

implementation

{$R *.dfm}

procedure Tfrmcapture.btnuploadClick(Sender: TObject);
begin
 if flpndlg1.Execute() then
 begin
  //here we will get the file name for uploading as a blob object
 end else
 begin
  ShowMessage('The Upload File Operation Has Been Cancelled !');
 end;
end;

procedure Tfrmcapture.FormShow(Sender: TObject);
begin
 btnsaveinvoice.Enabled:=False;
end;

end.
