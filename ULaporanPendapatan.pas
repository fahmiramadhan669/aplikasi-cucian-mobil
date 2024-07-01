unit ULaporanPendapatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, ADODB;

type
  TFLaporanPendapatan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DTLapPendapatanAwal: TDateTimePicker;
    BitProsesLapPendapatan: TBitBtn;
    BitKeluar: TBitBtn;
    DTLapPendapatanAkhir: TDateTimePicker;
    ADOProsesPendapatan: TADOQuery;
    ADOTotalPendapatan: TADOQuery;
    DataSource1: TDataSource;
    ADOTotalPendapatanExpr1000: TBCDField;
    ADOProsesPendapatanTanggal: TDateTimeField;
    ADOProsesPendapatanTotalMobil: TSmallintField;
    ADOProsesPendapatanJumlahKaryawan: TSmallintField;
    ADOProsesPendapatanPendapatanKotor: TBCDField;
    ADOProsesPendapatanTotalPendapatan: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure BitProsesLapPendapatanClick(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanPendapatan: TFLaporanPendapatan;

implementation
uses UPendapatanGaji, DateUtils, UPreviewPendapatan, UTransaksi;
{$R *.dfm}

procedure TFLaporanPendapatan.FormShow(Sender: TObject);
begin
DTLapPendapatanAwal.Date:=StartOfTheMonth(now);
DTLapPendapatanAkhir.Date:=EndOfTheMonth(now);
end;

procedure TFLaporanPendapatan.BitProsesLapPendapatanClick(Sender: TObject);
begin

ADOProsesPendapatan.Close;
ADOProsesPendapatan.SQL.Clear;
ADOProsesPendapatan.SQL.Add('select * from tbl_pendapatangaji where Tanggal>=#'+FormatDateTime('yyyy-MM-dd',DTLapPendapatanAwal.Date)+'# and Tanggal<=#'+FormatDateTime('yyyy-MM-dd',DTLapPendapatanAkhir.Date)+'# order by tanggal');
ADOProsesPendapatan.Open;

ADOTotalPendapatan.Close;
ADOTotalPendapatan.SQL.Clear;
ADOTotalPendapatan.SQL.Add('select SUM (totalpendapatan) from tbl_pendapatangaji where tanggal>=#'+FormatDateTime('yyyy/MM/dd',DTLapPendapatanAwal.DateTime)+'# and tanggal<=#'+FormatDateTime('yyyy/MM/dd',DTLapPendapatanAkhir.DateTime)+'#');
ADOTotalPendapatan.Open;

if not ADOProsesPendapatan.Eof then
begin
FPreviewPendapatan.QuickRep1.Preview;
end
else
MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
end;

procedure TFLaporanPendapatan.BitKeluarClick(Sender: TObject);
begin
close
end;

end.
