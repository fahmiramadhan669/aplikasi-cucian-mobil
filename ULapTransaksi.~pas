unit ULapTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFLaporanTransaksi = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DTLapTransaksiAwal: TDateTimePicker;
    BitProsesLapPendapatan: TBitBtn;
    BitKeluar: TBitBtn;
    ADOProsesTransaksi: TADOQuery;
    ADOProsesTransaksiMerk_Mobil: TWideStringField;
    ADOProsesTransaksiNama_Mobil: TWideStringField;
    ADOProsesTransaksiTanggal_Cuci: TDateTimeField;
    Label3: TLabel;
    DTLapTransaksiAkhir: TDateTimePicker;
    ADOProsesTransaksiPlat_No: TWideStringField;
    ADOProsesTransaksiPoles_Body: TWideStringField;
    procedure BitKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitProsesLapPendapatanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanTransaksi: TFLaporanTransaksi;

implementation
uses UTransaksi, DateUtils, UPreviewTransaksi;
{$R *.dfm}

procedure TFLaporanTransaksi.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFLaporanTransaksi.FormShow(Sender: TObject);
begin
DTLapTransaksiAwal.Date:=StartOfTheMonth(now);
DTLapTransaksiAkhir.Date:=EndOfTheMonth(now);
end;

procedure TFLaporanTransaksi.BitProsesLapPendapatanClick(Sender: TObject);
begin

ADOProsesTransaksi.Close;
ADOProsesTransaksi.SQL.Clear;
ADOProsesTransaksi.SQL.Add('select * from tbl_transaksi where Tanggal_Cuci>=#'+FormatDateTime('yyyy-MM-dd',DTLapTransaksiAwal.Date)+'# and Tanggal_Cuci<=#'+FormatDateTime('yyyy-MM-dd',DTLapTransaksiAkhir.Date)+'# order by Tanggal_Cuci');
ADOProsesTransaksi.Open;

if not ADOProsesTransaksi.Eof then
begin
FPreviewTransaksi.QuickRep1.Preview;
end
else
MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
end;

end.
