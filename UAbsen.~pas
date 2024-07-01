unit UAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, ADODB,
  XPMan;

type
  TFAbsen = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdID: TEdit;
    EdNama: TEdit;
    DTTanggal: TDateTimePicker;
    EdKeterangan: TEdit;
    RBMasuk: TRadioButton;
    RBPulang: TRadioButton;
    RBSakit: TRadioButton;
    RBIzin: TRadioButton;
    BitAbsen: TBitBtn;
    DBGrid1: TDBGrid;
    BitKeluar: TBitBtn;
    BitLookUp: TBitBtn;
    Timer1: TTimer;
    ADOConnection1: TADOConnection;
    ADOKaryawan: TADOQuery;
    DataSource1: TDataSource;
    ADOSimpan: TADOQuery;
    ADOCari: TADOQuery;
    ADOKaryawanNIK: TWideStringField;
    ADOKaryawanNama: TWideStringField;
    ADOKaryawanJenisKelamin: TWideStringField;
    ADOKaryawanTempat_Lahir: TWideStringField;
    ADOKaryawanTanggal_Lahir: TDateTimeField;
    ADOKaryawanAlamat: TWideStringField;
    ADOKaryawanNoTelepon: TWideStringField;
    ADOTampil: TADOQuery;
    ADOTampilNIK: TWideStringField;
    ADOTampilMasuk: TDateTimeField;
    ADOTampilKeluar: TDateTimeField;
    ADOTampilK_Masuk: TWideStringField;
    ADOTampilK_Izin: TWideStringField;
    ADOTampilK_Sakit: TWideStringField;
    ADOTampilKeterangan: TWideStringField;
    ADOTampilNamaKaryawan: TStringField;
    ADOTampilTanggalAbsen: TDateTimeField;
    XPManifest1: TXPManifest;
    Label2: TLabel;
    Label1: TLabel;
    ADOSimpanNIK: TWideStringField;
    ADOSimpanTanggalAbsen: TDateTimeField;
    ADOSimpanMasuk: TDateTimeField;
    ADOSimpanKeluar: TDateTimeField;
    ADOSimpanK_Masuk: TWideStringField;
    ADOSimpanK_Izin: TWideStringField;
    ADOSimpanK_Sakit: TWideStringField;
    ADOSimpanKeterangan: TWideStringField;
    ADOSimpanQty: TSmallintField;
    procedure Timer1Timer(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdIDKeyPress(Sender: TObject; var Key: Char);
    procedure BitAbsenClick(Sender: TObject);
    procedure DTTanggalChange(Sender: TObject);
    procedure DTTanggalCloseUp(Sender: TObject);
    procedure BitLookUpClick(Sender: TObject);
    procedure BitCetakClick(Sender: TObject);
      procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure TampilkanAbsen;
    PROCEDURE ABSENMASUK;
    PROCEDURE ABSENKELUAR;
    PROCEDURE ABSENIZIN;
    PROCEDURE ABSENSAKIT;
  public
    { Public declarations }
  end;

var
  FAbsen: TFAbsen;

implementation
uses UListKaryawan, UReport, Unit1, UKaryawan, UPendapatanGaji, UProfil;
{$R *.dfm}
Procedure TFAbsen.TampilkanAbsen;
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select * from tbl_Karyawan');
ADOKaryawan.Open;

ADOTampil.Close;
ADOTampil.SQL.Clear;
ADOTampil.SQL.Add('select * from tbl_absen where tanggalabsen=#'+FormatDateTime('yyyy/MM/dd',DTTanggal.DateTime)+'#');
ADOTampil.Open;
end;

Procedure TFAbsen.ABSENMASUK;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+EdID.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"'+FormatDateTime('HH:mm',now)+'","00:00","Ya","","","'+EdKeterangan.Text+'","'+inttostr(1)+'")');
   ADOSIMPAN.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
END;

Procedure TFAbsen.ABSENIZIN;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+EdID.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"00:00","00:00","","Ya","","'+EdKeterangan.Text+'","'+inttostr(0)+'")');
   ADOSIMPAN.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
END;

Procedure TFAbsen.ABSENSAKIT;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+EdID.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"00:00","00:00","","","Ya","'+EdKeterangan.Text+'","'+inttostr(0)+'")');
   ADOSIMPAN.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
END;

Procedure TFAbsen.ABSENKELUAR;
BEGIN
ADOCari.Close;
ADOCari.SQL.Clear;
ADOCari.SQL.Add('select NIK,Keluar from tbl_absen where tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'# and NIK="'+EdID.Text+'"');
ADOCari.Open;
if (ADOCari.FieldByName('Keluar').IsNull) or (ADOCari.FieldByName('Keluar').Value='00:00') then
Begin
   ADOSimpan.Close;
   ADOSimpan.SQL.Clear;
   ADOSimpan.SQL.Add('UPDATE TBL_ABSEN SET KELUAR="'+FormatDateTime('HH:mm',now)+'" WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
   ADOSimpan.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
end
else
begin
end
END;

procedure TFAbsen.Timer1Timer(Sender: TObject);
begin
Label7.Caption:=FormatDateTime('HH:mm:ss',now);
end;



procedure TFAbsen.BitKeluarClick(Sender: TObject);
begin
FAbsen.Hide;
end;

procedure TFAbsen.FormShow(Sender: TObject);
begin
EdID.Text:='';
EdNama.Text:='';
EdKeterangan.Text:='';
DTTanggal.Date:=now;

TampilkanAbsen;

RBMasuk.Checked:=true;
EdID.SetFocus
end;



procedure TFAbsen.EdIDKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select * from tbl_Karyawan where Nik="'+EdID.Text+'"');
ADOKaryawan.Open;
if not ADOKaryawan.Eof then
  begin
  BitAbsen.SetFocus;
  EdID.Text:=ADOKaryawanNIK.Value;
  EdNama.Text:=ADOKaryawanNama.Value;
  end
  else
  MessageDlg('Data Tidak Ditemukan!',mtError,[mbOK],0)

end

end;

procedure TFAbsen.BitAbsenClick(Sender: TObject);
begin
  ADOKaryawan.Close;
  ADOKaryawan.SQL.Clear;
  ADOKaryawan.SQL.Add('select * from TBL_KARYAwan where NIK="'+EdID.Text+'"');
  ADOKaryawan.Open;
IF NOT ADOKaryawan.Eof THEN
BEGIN
  If RBMasuk.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN HARI INI !!',mtInformation,[mbOK],0)
      END
      ELSE
        ABSENMASUK;
    End
  ELSE
    If RBPulang.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN where NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      ABSENKELUAR
      ELSE
      MessageDlg('ANDA BELUM ABSEN, SILAHKAN ABSEN TERLEBIH DAHULU !!',mtError,[mbOK],0)
    End
  ELSE
    If RBIzin.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN HARI INI!!',mtInformation,[mbOK],0)
      END
      ELSE
        ABSENIZIN;
    End
  ELSE
    If RBSakit.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN HARI INI!!',mtInformation,[mbOK],0)
      END
      ELSE
        ABSENSAKIT;
    End;


TampilkanAbsen;
EdID.SetFocus;
END
ELSE
MessageDlg('ID KARYAWAN TIDAK DITEMUKAN!!'+#13+'      silahkan cek lagi pastikan ID karyawan yang anda masukan benar',mtError,[mbOK],0)

end;

procedure TFAbsen.DTTanggalChange(Sender: TObject);
begin
TampilkanAbsen;
end;

procedure TFAbsen.DTTanggalCloseUp(Sender: TObject);
begin
if DTTanggal.DateTime>now then
begin
DTTanggal.Date:=now;
TampilkanAbsen;
RBMasuk.SetFocus;
end;
end;

procedure TFAbsen.BitLookUpClick(Sender: TObject);
begin
FListKaryawan.Label2.Caption:='Karyawan';
FListKaryawan.ShowModal;
end;

procedure TFAbsen.BitCetakClick(Sender: TObject);
begin
fReport.ShowModal
end;

procedure TFAbsen.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if ADOTampilMasuk.Value > StrToTime('08:00')  then
     TDBGrid(sender).Columns[1].font.Color :=ClRed
     else
     TDBGrid(sender).Canvas.Font.Color := clBlack;
     TDBGrid(sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
end.
