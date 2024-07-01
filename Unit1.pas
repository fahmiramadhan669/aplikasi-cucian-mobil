unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, StdCtrls, DB, ADODB, ComCtrls, Menus,
  ActnList, ExtActns, XPMan;

type
  TFMenuUtama = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    BrowseURL1: TBrowseURL;
    Timer1: TTimer;
    XPManifest1: TXPManifest;
    MainMenu: TMainMenu;
    Master: TMenuItem;
    Absen1: TMenuItem;
    ransaksi1: TMenuItem;
    Laporan: TMenuItem;
    LaporanAbsensi1: TMenuItem;
    LaporanTransaksi: TMenuItem;
    Image1: TImage;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Keluar: TMenuItem;
    Pengaturan: TMenuItem;
    HitungPendapatanGaji1: TMenuItem;
    LaporanPendapatan1: TMenuItem;
    LaporanGaji1: TMenuItem;
    Karyawan: TMenuItem;
    PencarianKaryawan1: TMenuItem;
    ambahKayawan1: TMenuItem;
    THR: TMenuItem;
    PengaturanHarga1: TMenuItem;
    PengaturanUsernamePassword1: TMenuItem;
    procedure p_0xClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    procedure Absen1Click(Sender: TObject);
    procedure ransaksi1Click(Sender: TObject);
    procedure LaporanAbsensi1Click(Sender: TObject);
    procedure LaporanTransaksiClick(Sender: TObject);
    procedure HitungPendapatanGaji1Click(Sender: TObject);
    procedure LaporanPendapatan1Click(Sender: TObject);
    procedure LaporanGaji1Click(Sender: TObject);
    procedure PencarianKaryawan1Click(Sender: TObject);
    procedure ambahKayawan1Click(Sender: TObject);
    procedure THRClick(Sender: TObject);
    procedure PengaturanHarga1Click(Sender: TObject);
    procedure PengaturanUsernamePassword1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenuUtama: TFMenuUtama;

implementation

uses Unit5, UAbsen, UTransaksi, ULapAbsen1, UReport, ULapTransaksi,
  UKaryawan, UListKaryawan, UTHR, UPengaturan, UPendapatanGaji,
  ULaporanPendapatan, ULaporanGaji, UListProfil, UProfil;

{$R *.dfm}

procedure TFMenuUtama.p_0xClick(Sender: TObject);
begin
if
(messagedlg('Tutup Aplikasi ?',mtconfirmation,
[mbyes,mbno],0)=mryes)then
Application.Terminate;
end;

procedure TFMenuUtama.Timer1Timer(Sender: TObject);
begin
Label1.Caption:=FormatDateTime('HH:mm:ss',now);
end;

procedure TFMenuUtama.FormCreate(Sender: TObject);
begin
Statusbar1.Panels[0].Text:=formatdatetime('dddd, dd mmmm yyyy',date());
end;

procedure TFMenuUtama.KeluarClick(Sender: TObject);
begin
   if (messagedlg('Tutup Aplikasi ?',mtconfirmation, [mbyes,mbno],0)=mryes)
  then
  FMenuUtama.Karyawan.Enabled:=True;
  FmenuUtama.Laporan.Enabled:=True;
  FMenuUtama.Pengaturan.Enabled:=True;
  close;
  FLogin.Show;
end;

procedure TFMenuUtama.Absen1Click(Sender: TObject);
begin
FAbsen.show;
end;

procedure TFMenuUtama.ransaksi1Click(Sender: TObject);
begin
FTransaksi.Show;
end;

procedure TFMenuUtama.LaporanAbsensi1Click(Sender: TObject);
begin
FReport.Show;
end;

procedure TFMenuUtama.LaporanTransaksiClick(Sender: TObject);
begin
FLaporanTransaksi.Show;
end;

procedure TFMenuUtama.HitungPendapatanGaji1Click(Sender: TObject);
begin
FPendapatanGaji.Show;
end;

procedure TFMenuUtama.LaporanPendapatan1Click(Sender: TObject);
begin
FLaporanPendapatan.Show;
end;

procedure TFMenuUtama.LaporanGaji1Click(Sender: TObject);
begin
FLaporanGaji.Show;
end;

procedure TFMenuUtama.PencarianKaryawan1Click(Sender: TObject);
begin
FListKaryawan.Show;
FListKaryawan.Label2.Caption:='';
end;

procedure TFMenuUtama.ambahKayawan1Click(Sender: TObject);
begin
FKaryawan.Show;
end;

procedure TFMenuUtama.THRClick(Sender: TObject);
begin
FTHR.Show;
end;

procedure TFMenuUtama.PengaturanHarga1Click(Sender: TObject);
begin
FPengaturanHarga.Show;
end;

procedure TFMenuUtama.PengaturanUsernamePassword1Click(Sender: TObject);
begin
FListProfil.Show;
end;

end.
