unit UTambahKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, ComCtrls, ExtCtrls;

type
  TFTambahKaryawan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Memo1: TMemo;
    CHStatus: TCheckBox;
    Panel3: TPanel;
    BitTambah: TButton;
    BitEdit: TButton;
    BitKeluar: TButton;
    BitHapus: TButton;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    procedure BitTambahClick(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitEditClick(Sender: TObject);
    procedure BitHapusClick(Sender: TObject);
  private
    { Private declarations }
    procedure bersih;
  public
    { Public declarations }
  end;

var
  FTambahKaryawan: TFTambahKaryawan;
  IsSimpan:Boolean;
implementation
uses UAbsen, UListKaryawan;
{$R *.dfm}

procedure TFTambahKaryawan.bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
ComboBox1.Text:='';
DateTimePicker1.DateTime:=now;
Memo1.Text:='';
end;

procedure TFTambahKaryawan.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFTambahKaryawan.FormShow(Sender: TObject);
begin
Panel1.Enabled:=false;
end;

procedure TFTambahKaryawan.BitTambahClick(Sender: TObject);
var Vstatus:string;
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
  ADOTable1.FieldByName('Alamat').AsString:=Memo1.Text;
  ADOTable1.FieldByName('NoTelepon').AsString:=Edit4.Text;
  ADOTable1.FieldByName('status').AsBoolean:=CHStatus.Checked;
  ADOTable1.Post;

  Panel1.Enabled:=false;
  BitTambah.Caption :='Tambah';
  BitEdit.Caption:='Edit';
  BitHapus.Enabled:=True;
  ADOTable1.Close;
  MessageDlg('Data Sudah Disimpan !!',mtInformation,[mbOK],0);
  FListKaryawan.BitTampilClick(sender)
end
else
begin
if CHStatus.Checked=true then
begin
vstatus:='True'
end
else
begin
vstatus:='False'
end;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update tbl_karyawan set nama="'+Edit2.Text+'",'+
'JenisKelamin="'+ComboBox1.Text+'",'+
'Tempat_LAHIR="'+Edit3.Text+'",'+
'Tanggal_Lahir="'+DateToStr(DateTimePicker1.Date)+'",'+
'Alamat="'+Memo1.Text+'",'+
'Notelepon="'+Edit4.Text+'",'+
'status='+Vstatus+''+
' where nik="'+Edit1.Text+'"');
ADOQuery1.ExecSQL;

  Panel1.Enabled:=false;
  BitTambah.Caption :='Tambah';
  BitEdit.Caption:='Edit';
  BitHapus.Enabled:=True;
  ADOTable1.Close;
  MessageDlg('Data Sudah Diedit !!',mtInformation,[mbOK],0);
  FListKaryawan.BitTampilClick(sender)
end
END
end;

procedure TFTambahKaryawan.BitEditClick(Sender: TObject);
begin
if BitEdit.Caption='Batal' then
begin
bersih;
Panel1.Enabled:=false;
BitTambah.Caption :='Tambah';
BitEdit.Caption:='Edit';
BitHapus.Enabled:=True;

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

procedure TFTambahKaryawan.BitHapusClick(Sender: TObject);
begin
if Edit1.Text='' then
MessageDlg('Pastikan Data yang akan Dihapus!!',mtInformation,[mbOK],0)
else
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from data where nik="'+Edit1.Text+'"');
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

end.
