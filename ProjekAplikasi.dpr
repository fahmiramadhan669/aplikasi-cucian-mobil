program ProjekAplikasi;

uses
  Forms,
  Unit5 in 'Unit5.pas' {FLogin},
  Unit1 in 'Unit1.pas' {FMenuUtama},
  UAbsen in 'UAbsen.pas' {FAbsen},
  UKaryawan in 'UKaryawan.pas' {FKaryawan},
  UListKaryawan in 'UListKaryawan.pas' {FListKaryawan},
  UReport in 'UReport.pas' {FReport},
  ULapAbsen1 in 'ULapAbsen1.pas' {FLapAbsen1},
  UTransaksi in 'UTransaksi.pas' {FTransaksi},
  ULapTransaksi in 'ULapTransaksi.pas' {FLaporanTransaksi},
  UPreviewTransaksi in 'UPreviewTransaksi.pas' {FPreviewTransaksi},
  UTHR in 'UTHR.pas' {FTHR},
  UReportTHR in 'UReportTHR.pas' {FReportTHR},
  ULapTHR in 'ULapTHR.pas' {FLapTHR},
  ULaporanPendapatan in 'ULaporanPendapatan.pas' {FLaporanPendapatan},
  UPendapatanGaji in 'UPendapatanGaji.pas' {FPendapatanGaji},
  UPengaturan in 'UPengaturan.pas' {FPengaturanHarga},
  UPreviewPendapatan in 'UPreviewPendapatan.pas' {FPreviewPendapatan},
  ULaporanGaji in 'ULaporanGaji.pas' {FLaporanGaji},
  UPreviewGaji in 'UPreviewGaji.pas' {FPreviewGaji},
  UListProfil in 'UListProfil.pas' {FListProfil};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Aplikasi Cucian Mobil';
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFMenuUtama, FMenuUtama);
  Application.CreateForm(TFAbsen, FAbsen);
  Application.CreateForm(TFKaryawan, FKaryawan);
  Application.CreateForm(TFListKaryawan, FListKaryawan);
  Application.CreateForm(TFReport, FReport);
  Application.CreateForm(TFLapAbsen1, FLapAbsen1);
  Application.CreateForm(TFTransaksi, FTransaksi);
  Application.CreateForm(TFLaporanTransaksi, FLaporanTransaksi);
  Application.CreateForm(TFPreviewTransaksi, FPreviewTransaksi);
  Application.CreateForm(TFTHR, FTHR);
  Application.CreateForm(TFReportTHR, FReportTHR);
  Application.CreateForm(TFLapTHR, FLapTHR);
  Application.CreateForm(TFLaporanPendapatan, FLaporanPendapatan);
  Application.CreateForm(TFPendapatanGaji, FPendapatanGaji);
  Application.CreateForm(TFPengaturanHarga, FPengaturanHarga);
  Application.CreateForm(TFPreviewPendapatan, FPreviewPendapatan);
  Application.CreateForm(TFLaporanGaji, FLaporanGaji);
  Application.CreateForm(TFPreviewGaji, FPreviewGaji);
  Application.CreateForm(TFListProfil, FListProfil);
  Application.Run;
end.
