unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Mask, DBCtrls, DB, ADODB, ComCtrls,
  jpeg;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    ButtonMasuk: TBitBtn;
    ButtonKeluar: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    bannerPn: TPanel;
    bannerLb: TLabel;
    Label3: TLabel;
    CBLevel: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    ADOConnection1: TADOConnection;
    ADOLogin: TADOQuery;
    ADOLoginUsername: TWideStringField;
    ADOLoginPassword: TWideStringField;
    ADOLoginLevel: TWideStringField;
    ADOLoginID: TWideStringField;
    procedure ButtonMasukClick(Sender: TObject);
    procedure p_0xClick(Sender: TObject);
    procedure ButtonKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBLevelKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;
  
implementation

uses Unit1, UListProfil;

{$R *.dfm}

procedure TFLogin.ButtonMasukClick(Sender: TObject);
var nama : string;
begin
  try
    begin
      with ADOLogin do
        begin
          Active:=False;
          sql.Clear;
          sql.Add('Select * from tbl_login where username = '+QuotedStr(Edit1.Text));
          open;
        end;

    if ADOLogin.RecordCount = 0 then
      Application.MessageBox('Maaf, Username Tidak Terdaftar!', 'INFORMATION', MB_OK or MB_ICONINFORMATION)
    else
      begin
        if ADOLogin.FieldByName('password').AsString <> Edit2.Text then
          begin
            Application.MessageBox('Maaf, Username dan Password Tidak Terdaftar!', 'Warning', MB_OK or MB_ICONWARNING)
          end
        else
        begin
        if ADOLogin.FieldByName('Level').AsString <> CBLevel.Text then
          begin
            Application.MessageBox('Maaf, Username dan Password Tidak Terdaftar!', 'Warning', MB_OK or MB_ICONWARNING)
          end
        else
        begin

  nama := ADOLogin.FieldValues['username'];
                    if ADOLogin.FieldByName('Level').AsString = 'Admin' then
                    begin
                        FLogin.Hide;
                        FMenuUtama.Show;
                    end
                    else
                    begin

                    nama := ADOLogin.FieldValues['username'];
                    if ADOLogin.FieldByName('Level').AsString = 'User' then
                    begin
                        FLogin.Hide;
                        FMenuUtama.Show;
                        FMenuUtama.Karyawan.Enabled:=False;
                        FmenuUtama.Laporan.Enabled:=False;
                        FMenuUtama.Pengaturan.Enabled:=False;
              end;
              end;
      end;
      end;
      end;
      end;
      Except
        ShowMessage('Username dan Pasword Tidak Terdaftar di Database!');
        Edit1.SetFocus;
end;
end;


procedure TFLogin.p_0xClick(Sender: TObject);
begin
close;
end;

procedure TFLogin.ButtonKeluarClick(Sender: TObject);
begin
if
(messagedlg('Tutup Aplikasi ?',mtconfirmation,
[mbyes,mbno],0)=mryes)then
application.Terminate;
end;

procedure TFLogin.FormShow(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TFLogin.CBLevelKeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
Edit2.SetFocus;
end
end;

procedure TFLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
CBLevel.SetFocus;
end
end;

end.



