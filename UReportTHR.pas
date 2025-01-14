unit UReportTHR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, ADODB, DBCtrls;

type
  TFReportTHR = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    EdPlatNo: TEdit;
    BitKeluarTHR: TBitBtn;
    BitProsesTHR: TBitBtn;
    EdMerkMobil: TEdit;
    Label4: TLabel;
    EdNamaMobil: TEdit;
    ADOProsesTHR: TADOQuery;
    ADOTHR: TADOQuery;
    ADOProsesTHRMerk_Mobil: TWideStringField;
    ADOProsesTHRNama_Mobil: TWideStringField;
    ADOProsesTHRTanggal_Cuci: TDateTimeField;
    ADOTHRMerk_Mobil: TWideStringField;
    ADOTHRNama_Mobil: TWideStringField;
    ADOTHRTanggal_Cuci: TDateTimeField;
    ADOProsesTHRPlat_No: TWideStringField;
    ADOTHRPlat_No: TWideStringField;
    Label3: TLabel;
    DTTHRAwal: TDateTimePicker;
    Label5: TLabel;
    DTTHRAkhir: TDateTimePicker;
    Label6: TLabel;
    DBText1: TDBText;
    ADOTotalCuci: TADOQuery;
    DataSource1: TDataSource;
    ADOProsesTHRPoles_Body: TWideStringField;
    ADOTHRPoles_Body: TWideStringField;
    ADOProsesTHRQty: TSmallintField;
    ADOProsesTHRQty_Poles: TSmallintField;
    ADOTHRQty: TSmallintField;
    ADOTHRQty_Poles: TSmallintField;
    procedure BitKeluarTHRClick(Sender: TObject);
    procedure EdPlatNoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitProsesTHRClick(Sender: TObject);
    procedure BitCariTHRClick(Sender: TObject);
    procedure DTTHRAkhirChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReportTHR: TFReportTHR;

implementation

{$R *.dfm}
uses UTransaksi, UTHR, DateUtils, ULapTHR;

procedure TFReportTHR.BitKeluarTHRClick(Sender: TObject);
begin
close
end;

procedure TFReportTHR.EdPlatNoKeyPress(Sender: TObject; var Key: Char);
begin
ADOTHR.Close;
ADOTHR.SQL.Clear;
ADOTHR.SQL.Add('select * from tbl_transaksi where Plat_No="'+EdPlatNo.Text+'"');
ADOTHR.Open;

if not ADOTHR.Eof then
  begin
    EdPlatNo.Text:=ADOTHRPlat_No.Value;
    EdMerkMobil.Text:=ADOTHRMerk_Mobil.Value;
    EdNamaMobil.Text:=ADOTHRNAMA_Mobil.Value;
    BitProsesTHR.SetFocus;

  end
else
  begin
  MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
  EdPlatNo.SetFocus;
  end
end;

procedure TFReportTHR.FormShow(Sender: TObject);
begin
BitProsesTHR.Setfocus;
DTTHRAwal.Date:=StartOfTheMonth(now);
DTTHRAkhir.Date:=EndOfTheMonth(now);
DBText1.Caption:='';
end;

procedure TFReportTHR.BitProsesTHRClick(Sender: TObject);
begin
if  (DBText1.Caption ='') then
begin
MessageDlg('Silahkan Tentukan Tanggal Terlebih Dahulu!',mtInformation,[mbOK],0)
end
else
begin
ADOProsesTHR.Close;
ADOProsesTHR.SQL.Clear;
ADOProsesTHR.SQL.Add('select * from  tbl_transaksi where plat_No="'+EdPlatNo.Text+'" and Tanggal_Cuci>=#'+FormatDateTime('yyyy-MM-dd',DTTHRAwal.Date)+'# and Tanggal_Cuci<=#'+FormatDateTime('yyyy-MM-dd',DTTHRAkhir.Date)+'# order by tanggal_cuci');
ADOProsesTHR.Open;

if not ADOProsesTHR.Eof then
begin
FLapTHR.QuickRep1.Preview;
end
else
MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
end
end;


procedure TFReportTHR.BitCariTHRClick(Sender: TObject);
begin
FTHR.ShowModal;
end;

procedure TFReportTHR.DTTHRAkhirChange(Sender: TObject);
var
TotalMobil : Integer;
begin
ADOTotalCuci.Close;
ADOTotalCuci.SQL.Clear;
ADOTotalCuci.SQL.Add('select SUM (Qty) from tbl_transaksi where Plat_No="'+EdPlatNo.Text+'" and tanggal_cuci>=#'+FormatDateTime('yyyy-MM-dd',DTTHRAwal.Date)+'# and Tanggal_Cuci<=#'+FormatDateTime('yyyy-MM-dd',DTTHRAkhir.Date)+'#');
ADOTotalCuci.Open;

TotalMobil := strtoint(DBText1.Caption);
If TotalMobil>=15 then
  begin
    FLapTHR.QRLabel7.Caption:='Sarung';
  end
  Else
  begin
    FLapTHR.QRLabel7.Caption:='-';
  end
end;

end.
