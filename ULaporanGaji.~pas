unit ULaporanGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, ADODB;

type
  TFLaporanGaji = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DTLapGajiAwal: TDateTimePicker;
    BitProsesLapGaji: TBitBtn;
    BitKeluar: TBitBtn;
    DTLapGajiAkhir: TDateTimePicker;
    ADOProsesGaji: TADOQuery;
    ADOTotalGaji: TADOQuery;
    DataSource1: TDataSource;
    ADOTotalGajiExpr1000: TBCDField;
    ADOProsesGajiTanggal: TDateTimeField;
    ADOProsesGajiTotalMobil: TSmallintField;
    ADOProsesGajiJumlahKaryawan: TSmallintField;
    ADOProsesGajiGajiKaryawan: TBCDField;
    ADOProsesGajiGajiPerkaryawan: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure BitProsesLapGajiClick(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanGaji: TFLaporanGaji;

implementation
uses UTransaksi, UPendapatanGaji, DateUtils, UPreviewGaji;
{$R *.dfm}

procedure TFLaporanGaji.FormShow(Sender: TObject);
begin
DTLapGajiAwal.Date:=StartOfTheMonth(now);
DTLapGajiAkhir.Date:=EndOfTheMonth(now);
end;

procedure TFLaporanGaji.BitProsesLapGajiClick(Sender: TObject);
begin

ADOProsesGaji.Close;
ADOProsesGaji.SQL.Clear;
ADOProsesGaji.SQL.Add('select * from tbl_pendapatangaji where Tanggal>=#'+FormatDateTime('yyyy-MM-dd',DTLapGajiAwal.Date)+'# and Tanggal<=#'+FormatDateTime('yyyy-MM-dd',DTLapGajiAkhir.Date)+'# order by tanggal');
ADOProsesGaji.Open;

ADOTotalGaji.Close;
ADOTotalGaji.SQL.Clear;
ADOTotalGaji.SQL.Add('select SUM (gajiperkaryawan) from tbl_pendapatangaji where tanggal>=#'+FormatDateTime('yyyy/MM/dd',DTLapGajiAwal.DateTime)+'# and tanggal<=#'+FormatDateTime('yyyy/MM/dd',DTLapGajiAkhir.DateTime)+'#');
ADOTotalGaji.Open;

if not ADOProsesGaji.Eof then
begin
FPreviewGaji.QuickRep1.Preview;
end
else
MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
end;

procedure TFLaporanGaji.BitKeluarClick(Sender: TObject);
begin
close
end;

end.
