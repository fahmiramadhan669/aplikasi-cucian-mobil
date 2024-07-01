unit UPendapatanGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB, ADODB;

type
  TFPendapatanGaji = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DTPendapatanGaji: TDateTimePicker;
    DBText1: TDBText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    BtnHitung: TButton;
    BitSimpan: TButton;
    BitBatal: TButton;
    BitKeluar: TButton;
    ADOTotalMobil: TADOQuery;
    DataSource1: TDataSource;
    ADOTotalMobilExpr1000: TFloatField;
    ADOTable1: TADOTable;
    ADOSimpan: TADOQuery;
    ADOTable1Harga_Cuci: TBCDField;
    ADOTable1Upah_Permobil: TBCDField;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    ADOTotalKaryawan: TADOQuery;
    DataSource2: TDataSource;
    ADOTotalKaryawanExpr1000: TFloatField;
    ADOSimpanTanggal: TDateTimeField;
    ADOSimpanTotalMobil: TSmallintField;
    ADOSimpanJumlahKaryawan: TSmallintField;
    ADOSimpanPendapatanKotor: TBCDField;
    ADOSimpanGajiKaryawan: TBCDField;
    ADOSimpanTotalPendapatan: TBCDField;
    ADOSimpanGajiPerkaryawan: TBCDField;
    ADOTable1Harga_Layanan: TBCDField;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    ADOTotalLayanan: TADOQuery;
    DataSource3: TDataSource;
    ADOTotalLayananExpr1000: TFloatField;
    DBText3: TDBText;
    Label15: TLabel;
    Edit8: TEdit;
    ADOTable1Upah_Layanan: TBCDField;
    procedure DTPendapatanGajiChange(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnHitungClick(Sender: TObject);
    procedure BitBatalClick(Sender: TObject);
    procedure BitSimpanClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure bersih;
  public
    { Public declarations }
  end;

var
  FPendapatanGaji: TFPendapatanGaji;
implementation
uses ULaporanPendapatan, UPreviewPendapatan, UTransaksi, ULaporanGaji, UAbsen, UPengaturan;
{$R *.dfm}
procedure TFPendapatanGaji.bersih;
begin
DTPendapatanGaji.Date:=now;
DBText1.Caption:='';
DBText2.Caption:='';
DBText3.Caption:='';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
BitBatal.Enabled:=False;
BtnHitung.Enabled:=False;

end;

procedure TFPendapatanGaji.DTPendapatanGajiChange(Sender: TObject);
begin
BitBatal.Enabled:=True;
BtnHitung.Enabled:=True;

ADOTotalMobil.Close;
ADOTotalMobil.SQL.Clear;
ADOTotalMobil.SQL.Add('select SUM (Qty) from tbl_transaksi where tanggal_cuci=#'+FormatDateTime('yyyy/MM/dd',DTPendapatanGaji.DateTime)+'#');
ADOTotalMobil.Open;

ADOTotalKaryawan.Close;
ADOTotalKaryawan.SQL.Clear;
ADOTotalKaryawan.SQL.Add('select SUM (Qty) from tbl_absen where tanggalabsen=#'+FormatDateTime('yyyy/MM/dd',FAbsen.DTTanggal.DateTime)+'#');
ADOTotalKaryawan.Open;

ADOTotalLayanan.Close;
ADOTotalLayanan.SQL.Clear;
ADOTotalLayanan.SQL.Add('select SUM (Qty_Poles) from tbl_transaksi where tanggal_cuci=#'+FormatDateTime('yyyy/MM/dd',DTPendapatanGaji.DateTime)+'#');
ADOTotalLayanan.Open;

ADOTable1.Close;
ADOTable1.Open;
Edit1.Text := ADOTable1.fieldbyname('Harga_Cuci').AsString;
Edit2.Text := ADOTable1.fieldbyname('Upah_Permobil').AsString;
Edit7.Text := ADOTable1.fieldbyname('Harga_Layanan').AsString;
Edit8.Text := ADOTable1.fieldbyname('Upah_Layanan').AsString;
end;

procedure TFPendapatanGaji.BitKeluarClick(Sender: TObject);
begin
Close
end;

procedure TFPendapatanGaji.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TFPendapatanGaji.BtnHitungClick(Sender: TObject);
var
JMobil, JKaryawan, JLayanan, HLayanan, ULayanan, HCuci, PMobil, PKotor, PKaryawan, TPendapatan, TPerkaryawan : Integer;
begin
JMobil := strtoint(DBText1.Caption);
JKaryawan := strtoint(DBText2.Caption);
JLayanan := strtoint(DBText3.Caption);
HLayanan := strtoint(Edit7.Text);
ULayanan := strtoint (Edit8.Text);
HCuci := strtoint(Edit1.Text);
PMobil := strtoint(Edit2.Text);
PKotor := (JMobil * HCuci) + (HLayanan * JLayanan);
PKaryawan := (JMobil * PMobil) + (ULayanan * JLayanan);
TPendapatan := PKotor - PKaryawan;
TPerkaryawan := PKaryawan div JKaryawan;
Edit3.Text:= inttostr(PKotor);
Edit4.Text:= inttostr(PKaryawan);
Edit5.Text:= inttostr(TPendapatan);
Edit6.Text:= inttostr(TPerkaryawan);
end;

procedure TFPendapatanGaji.BitBatalClick(Sender: TObject);
begin
bersih;
end;

procedure TFPendapatanGaji.BitSimpanClick(Sender: TObject);
begin
if  (Edit3.Text = '') and  (Edit4.Text = '') and (Edit5.Text = '') and (Edit6.Text = '') and (Edit5.Text = '') and (Edit7.Text = '') and (Edit8.Text = '') then
begin
MessageDlg('Silahkan Hitung Terlebih dahulu!!',mtInformation,[mbOK],0)
end
else
begin
  ADOSimpan.Close;
  ADOSimpan.SQL.Clear;
  ADOSimpan.SQL.Add('insert into Tbl_PendapatanGaji values ("'+FormatDateTime('dd-MM-yyyy',DTPendapatanGaji.Date)+'","'+DBText1.Caption+'","'+DBText2.Caption+'","'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'","'+Edit6.Text+'")');
  ADOSimpan.ExecSQL;

MessageDlg('Pendapatan / Gaji Berhasil Disimpan!!',mtInformation,[mbOK],0);
bersih;
end
end;

procedure TFPendapatanGaji.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFPendapatanGaji.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFPendapatanGaji.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFPendapatanGaji.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFPendapatanGaji.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFPendapatanGaji.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

end.
