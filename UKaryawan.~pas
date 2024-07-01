unit UKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, ComCtrls, ExtCtrls;

type
  TFKaryawan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Memo1: TMemo;
    Panel3: TPanel;
    BitTambah: TButton;
    BitEdit: TButton;
    BitKeluar: TButton;
    BitHapus: TButton;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ADOQuery1NIK: TWideStringField;
    ADOQuery1Nama: TWideStringField;
    ADOQuery1JenisKelamin: TWideStringField;
    ADOQuery1Tempat_Lahir: TWideStringField;
    ADOQuery1Tanggal_Lahir: TDateTimeField;
    ADOQuery1Alamat: TWideStringField;
    ADOQuery1NoTelepon: TWideStringField;
    Label9: TLabel;
    ComboBox2: TComboBox;
    ADOTable1NIK: TWideStringField;
    ADOTable1Nama: TWideStringField;
    ADOTable1JenisKelamin: TWideStringField;
    ADOTable1Tempat_Lahir: TWideStringField;
    ADOTable1Tanggal_Lahir: TDateTimeField;
    ADOTable1Jabatan: TWideStringField;
    ADOTable1Alamat: TWideStringField;
    ADOTable1NoTelepon: TWideStringField;
    procedure BitKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitTambahClick(Sender: TObject);
    procedure BitEditClick(Sender: TObject);
    procedure BitHapusClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure bersih;
  public
    { Public declarations }
  end;

var
  FKaryawan: TFKaryawan;
  IsSimpan:Boolean;
implementation

{$R *.dfm}
uses UAbsen, UListKaryawan;
procedure TFKaryawan.bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
ComboBox1.Text:='';
ComboBox2.Text:='';
DateTimePicker1.DateTime:=now;
Memo1.Text:='';
end;

procedure TFKaryawan.BitKeluarClick(Sender: TObject);
begin
bersih;
Close
end;

procedure TFKaryawan.FormShow(Sender: TObject);
begin

Panel1.Enabled:=false;
end;

procedure TFKaryawan.BitTambahClick(Sender: TObject);
begin
if BitTambah.Caption ='Tambah' then
Begin
IsSimpan:=True;
  Panel1.Enabled:=true;
  bersih;
  Edit2.SetFocus;
  Edit1.Text:='K-'+FormatDateTime('YYMMddHHmmss',now);
  BitTambah.Caption :='Simpan';
  BitEdit.Caption:='Batal';
  BitHapus.Enabled:=false;
  BitKeluar.Enabled:=True;
end
else
BEGIN
if IsSimpan=true then
begin
  ADOTable1.Open;
  ADOTable1.Append;
  ADOTable1.FieldByName('NIK').AsString:=Edit1.Text;
  ADOTable1.FieldByName('Nama').AsString:=Edit2.Text;
  ADOTable1.FieldByName('JenisKelamin').AsString:=ComboBox1.Text;
  ADOTable1.FieldByName('Tempat_Lahir').AsString:=Edit3.Text;
  ADOTable1.FieldByName('Tanggal_Lahir').AsDateTime:=DateTimePicker1.Date;
  ADOTable1.FieldByName('Jabatan').AsString:=ComboBox2.Text;
  ADOTable1.FieldByName('Alamat').AsString:=Memo1.Text;
  ADOTable1.FieldByName('NoTelepon').AsString:=Edit4.Text;
  ADOTable1.Post;

  Panel1.Enabled:=false;
  BitTambah.Caption :='Tambah';
  BitEdit.Caption:='Edit';
  BitHapus.Enabled:=True;
  ADOTable1.Close;
  MessageDlg('Data Sudah Disimpan !!',mtInformation,[mbOK],0);
  bersih;
  FListKaryawan.BitTampilClick(sender)
end
else
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update tbl_karyawan set nama="'+Edit2.Text+'",'+
'JenisKelamin="'+ComboBox1.Text+'",'+
'Tempat_LAHIR="'+Edit3.Text+'",'+
'Tanggal_Lahir="'+DateToStr(DateTimePicker1.Date)+'",'+
'Jabatan="'+ComboBox2.Text+'",'+
'Alamat="'+Memo1.Text+'",'+
'Notelepon="'+Edit4.Text+'" '+
' where nik="'+Edit1.Text+'"');
ADOQuery1.ExecSQL;

  Panel1.Enabled:=false;
  BitTambah.Caption :='Tambah';
  BitEdit.Caption:='Edit';
  BitHapus.Enabled:=True;
  ADOTable1.Close;
  MessageDlg('Data Sudah Diedit !!',mtInformation,[mbOK],0);
  bersih;
  FListKaryawan.BitTampilClick(sender)
end
END
end;

procedure TFKaryawan.BitEditClick(Sender: TObject);
begin
if BitEdit.Caption='Batal' then
begin
bersih;
Panel1.Enabled:=false;
BitTambah.Caption :='Tambah';
BitEdit.Caption:='Edit';
BitHapus.Enabled:=True;
BitKeluar.Enabled:=True;

end
else

if Edit1.Text='' then
MessageDlg('Pastikan Data yang akan DiEdit!!',mtInformation,[mbOK],0)
else
begin
IsSimpan:=false;
Panel1.Enabled:=true;
Edit2.SetFocus;
BitTambah.Caption :='Simpan';
BitEdit.Caption:='Batal';
BitHapus.Enabled:=false;

end


end;

procedure TFKaryawan.BitHapusClick(Sender: TObject);
begin
if Edit1.Text='' then
MessageDlg('Pastikan Data yang akan Dihapus!!',mtInformation,[mbOK],0)
else
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from tbl_karyawan where nik="'+Edit1.Text+'"');
ADOQuery1.ExecSQL;

  bersih;
  DateTimePicker1.DateTime:=now;
  Panel1.Enabled:=false;
  BitTambah.Caption :='Tambah';
  BitEdit.Caption:='Edit';
  BitHapus.Enabled:=True;
  MessageDlg('Data Sudah Dihapus!!',mtInformation,[mbOK],0)
end
end;

procedure TFKaryawan.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFKaryawan.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

end.
