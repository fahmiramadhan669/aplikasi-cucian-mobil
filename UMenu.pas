unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFMenu = class(TForm)
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    LblStatus: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    Shape1: TShape;
    Label3: TLabel;
    EdID: TEdit;
    EdNama: TEdit;
    DTTanggalAwal: TDateTimePicker;
    DTTanggalAkhir: TDateTimePicker;
    BitProses: TBitBtn;
    BitKeluar: TBitBtn;
    BitCari: TBitBtn;
    ADOKaryawan: TADOQuery;
    ADOProses: TADOQuery;
    ADOIzin: TADOQuery;
    procedure BitKeluarClick(Sender: TObject);
    procedure EdIDKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitCariClick(Sender: TObject);
    procedure BitProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation
uses UAbsen,UTambahKaryawan,UListKaryawan, DateUtils;
{$R *.dfm}

procedure TFMenu.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFMenu.EdIDKeyPress(Sender: TObject; var Key: Char);
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
  if ADOKaryawanStatus.Value=True then
    LblStatus.Caption:='Active'
    else
    LblStatus.Caption:='Not Active'
  end
  else
  begin
  MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
  EdID.SetFocus;
  end

end
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
EdID.Text:='';
EdNama.Text:='';
LblStatus.Caption:='-';
EdID.SetFocus;
DTTanggalAwal.Date:=StartOfTheMonth(now);
DTTanggalAkhir.Date:=now;
end;

procedure TFMenu.BitCariClick(Sender: TObject);
begin
FListKaryawan.Label2.Caption:='Laporan';
FListKaryawan.ShowModal;
end;

procedure TFMenu.BitProsesClick(Sender: TObject);
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

end.
