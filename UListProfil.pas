unit UListProfil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TFListProfil = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitRefresh: TButton;
    DBGrid1: TDBGrid;
    BitKeluar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    BitTambah: TButton;
    BitEdit: TButton;
    BitHapus: TButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1ID: TWideStringField;
    ADOTable1Username: TWideStringField;
    ADOTable1Password: TWideStringField;
    ADOTable1Level: TWideStringField;
    BitBatal: TButton;
    procedure BitRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitTambahClick(Sender: TObject);
    procedure BitHapusClick(Sender: TObject);
    procedure BitEditClick(Sender: TObject);
    procedure BitBatalClick(Sender: TObject);
  private
    { Private declarations }
    procedure TampilkanProfil;
    procedure Bersih;
  public
    { Public declarations }
  end;

var
  FListProfil: TFListProfil;
  SimpanProfil: Boolean;

implementation
uses Unit5;
{$R *.dfm}
procedure TFListProfil.TampilkanProfil;
begin
ADOTable1.Close;
ADOTable1.Open;
end;

procedure TFListProfil.Bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
ComboBox1.Text:='';
BitTambah.Caption:='Tambah';
BitHapus.Enabled:=False;
BitBatal.Enabled:=False;
end;

procedure TFListProfil.BitRefreshClick(Sender: TObject);
begin
TampilkanProfil;
end;

procedure TFListProfil.FormShow(Sender: TObject);
begin
TampilkanProfil;
Bersih;
end;

procedure TFListProfil.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFListProfil.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text:=ADOTable1.FieldByName('ID').AsString;
Edit2.Text:=ADOTable1.FieldByName('Username').AsString;
Edit3.Text:=ADOTable1.FieldByName('Password').AsString;
ComboBox1.Text:=ADOTable1.FieldByName('Level').AsString;

BitHapus.Enabled:=True;
BitBatal.Enabled:=True;
end;

procedure TFListProfil.BitTambahClick(Sender: TObject);
begin
if BitTambah.Caption = 'Tambah' then
begin
SimpanProfil:=True;
Bersih;
Edit1.Text:='P-'+FormatDateTime('HHmmss',now);
Edit2.SetFocus;
BitTambah.Caption:='Simpan';
BitHapus.Enabled:=False;
BitBatal.Enabled:=True;
end
else
begin
if SimpanProfil=True then
begin

ADOTable1.Open;
ADOTable1.Append;
ADOTable1.FieldByName('ID').AsString:=Edit1.Text;
ADOTable1.FieldByName('Username').AsString:=Edit2.Text;
ADOTable1.FieldByName('Password').AsString:=Edit3.Text;
ADOTable1.FieldByName('Level').AsString:=ComboBox1.Text;
ADOTable1.Post;

ADOTable1.Close;
MessageDlg('Data Berhasil Dibuat!',mtInformation,[mbOK],0);
Bersih;
ADOTable1.Close;
ADOTable1.Open;
end
else
begin
ADOTable1.Edit;
ADOTable1.FieldByName('Username').AsString:=Edit2.Text;
ADOTable1.FieldByName('Password').AsString:=Edit3.Text;
ADOTable1.FieldByName('Level').AsString:=ComboBox1.Text;
ADOTable1.Post;

BitTambah.Caption:='Tambah';
ADOTable1.Close;
MessageDlg('Data Sudah Diedit !!',mtInformation,[mbOK],0);
Bersih;
ADOTable1.Close;
ADOTable1.Open;
BitTambah.Caption:='Tambah';
end
end
end;

procedure TFListProfil.BitHapusClick(Sender: TObject);
begin
if (Edit1.Text = '') and (Edit2.Text = '') and (Edit3.Text = '') and (ComboBox1.Text = '') then
begin
MessageDlg('Pastikan Data yang akan Dihapus!!',mtInformation,[mbOK],0)
end
else
begin
ADOTable1.Delete;
Bersih;
BitTambah.Caption:='Tambah';
BitHapus.Enabled:=false;
end
end;

procedure TFListProfil.BitEditClick(Sender: TObject);
begin
if (Edit1.Text = '') and (Edit2.Text = '') and (Edit3.Text = '') and (ComboBox1.Text = '') then
MessageDlg('Pastikan Data yang akan Di Edit!!',mtInformation,[mbOK],0)
else
begin
SimpanProfil:=False;
Edit2.SetFocus;
BitTambah.Caption:='Simpan';
BitEdit.Caption:='Edit';
BitHapus.Enabled:=False;
end
end;

procedure TFListProfil.BitBatalClick(Sender: TObject);
begin
Bersih;
end;

end.
