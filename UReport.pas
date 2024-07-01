unit UReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFReport = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    EdID: TEdit;
    EdNama: TEdit;
    DTTanggalAwal: TDateTimePicker;
    DTTanggalAkhir: TDateTimePicker;
    BitProses: TBitBtn;
    BitKeluar: TBitBtn;
    BitCari: TBitBtn;
    ADOKaryawan: TADOQuery;
    ADOKaryawanNIK: TWideStringField;
    ADOKaryawanNama: TWideStringField;
    ADOKaryawanJenisKelamin: TWideStringField;
    ADOKaryawanTempat_Lahir: TWideStringField;
    ADOKaryawanTanggal_Lahir: TDateTimeField;
    ADOKaryawanAlamat: TWideStringField;
    ADOKaryawanNoTelepon: TWideStringField;
    ADOProses: TADOQuery;
    ADOProsesNIK: TWideStringField;
    ADOProsesTanggalAbsen: TDateTimeField;
    ADOProsesMasuk: TDateTimeField;
    ADOProsesKeluar: TDateTimeField;
    ADOProsesK_Masuk: TWideStringField;
    ADOProsesK_Izin: TWideStringField;
    ADOProsesK_Sakit: TWideStringField;
    ADOProsesKeterangan: TWideStringField;
    ADOProsesNamakaryawan: TStringField;
    ADOIzin: TADOQuery;
    Panel1: TPanel;
    procedure BitKeluarClick(Sender: TObject);
    procedure EdIDKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitProsesClick(Sender: TObject);
    procedure BitCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReport: TFReport;

implementation

{$R *.dfm}
uses UAbsen,UKaryawan,UListKaryawan, DateUtils, ULapAbsen1;
procedure TFReport.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFReport.EdIDKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select * from tbl_Karyawan where Nik="'+EdID.Text+'"');
ADOKaryawan.Open;
if not ADOKaryawan.Eof then
  begin
  EdID.Text:=ADOKaryawanNIK.Value;
  EdNama.Text:=ADOKaryawanNama.Value;
  BitProses.SetFocus;
  end
  else
  begin
  MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
  EdID.SetFocus;
  end

end
end;

procedure TFReport.FormShow(Sender: TObject);
begin
EdID.Text:='';
EdNama.Text:='';
EdID.SetFocus;
DTTanggalAwal.Date:=StartOfTheMonth(now);
DTTanggalAkhir.Date:=EndOfTheMonth(now);
end;


procedure TFReport.BitProsesClick(Sender: TObject);
begin
ADOProses.Close;
ADOProses.SQL.Clear;
ADOProses.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen>=#'+FormatDateTime('yyyy-MM-dd',DTTanggalAwal.Date)+'# and tanggalabsen<=#'+FormatDateTime('yyyy-MM-dd',DTTanggalAkhir.Date)+'# order by tanggalabsen');
ADOProses.Open;

if not ADOProses.Eof then
begin
flapabsen1.QuickRep1.Preview;
end
else
MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
end;

procedure TFReport.BitCariClick(Sender: TObject);
begin
FListKaryawan.Label2.Caption:='Laporan';
FListKaryawan.ShowModal;
end;

end.
