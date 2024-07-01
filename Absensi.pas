program Absensi;

uses
  Forms,
  UAbsen in 'UAbsen.pas' {FAbsen},
  UListKaryawan in 'UListKaryawan.pas' {FListKaryawan},
  Unit1 in 'UTambah Karyawan.pas' {FTambahKaryawan},
  UMenu in 'UMenu.pas' {FMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ABSENSI';
  Application.CreateForm(TFAbsen, FAbsen);
  Application.CreateForm(TFListKaryawan, FListKaryawan);
  Application.CreateForm(TFTambahKaryawan, FTambahKaryawan);
  Application.Run;
end.
 