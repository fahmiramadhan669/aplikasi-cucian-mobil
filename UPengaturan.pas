unit UPengaturan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TFPengaturanHarga = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitEdit: TButton;
    BitBatal: TButton;
    BitKeluar: TButton;
    ADOConnection1: TADOConnection;
    ADOPengaturan: TADOQuery;
    ADOPengaturanHarga_Cuci: TBCDField;
    ADOTable1: TADOTable;
    ADOTable1Harga_Cuci: TBCDField;
    BitSimpan: TButton;
    ADOPengaturanUpah_Permobil: TBCDField;
    ADOTable1Upah_Permobil: TBCDField;
    Label3: TLabel;
    Edit3: TEdit;
    ADOPengaturanHarga_Layanan: TBCDField;
    ADOTable1Harga_Layanan: TBCDField;
    Label4: TLabel;
    Edit4: TEdit;
    ADOPengaturanUpah_Layanan: TBCDField;
    ADOTable1Upah_Layanan: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure BitEditClick(Sender: TObject);
    procedure BitBatalClick(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure BitSimpanClick(Sender: TObject);
  private
    { Private declarations }
    procedure Tampil;
    procedure Bersih;
  public
    { Public declarations }
  end;

var
  FPengaturanHarga: TFPengaturanHarga;
implementation
uses UPendapatanGaji;
{$R *.dfm}
procedure TFPengaturanHarga.Tampil;
begin
ADOTable1.Close;
ADOTable1.Open;
Edit1.Text := ADOTable1.fieldbyname('Harga_Cuci').AsString;
Edit2.Text := ADOTable1.fieldbyname('Upah_Permobil').AsString;
Edit3.Text := ADOTable1.fieldbyname('Harga_Layanan').AsString;
Edit4.Text := ADOTable1.fieldbyname('Upah_Layanan').AsString;

Panel1.Enabled:=False;
end;

procedure TFPengaturanHarga.Bersih;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
end;

procedure TFPengaturanHarga.FormShow(Sender: TObject);
begin
Tampil;
BitSimpan.Enabled:=False;
BitBatal.Enabled:=False;
end;

procedure TFPengaturanHarga.BitEditClick(Sender: TObject);
begin
BitSimpan.Enabled:=True;
BitBatal.Enabled:=True;
Panel1.Enabled:=True;
Edit1.SetFocus;
end;

procedure TFPengaturanHarga.BitBatalClick(Sender: TObject);
begin
Bersih;
Tampil;
BitSimpan.Enabled:=False;
BitBatal.Enabled:=False;
end;

procedure TFPengaturanHarga.BitKeluarClick(Sender: TObject);
begin
Close
end;

procedure TFPengaturanHarga.BitSimpanClick(Sender: TObject);
begin
ADOPengaturan.Close;
ADOPengaturan.SQL.Clear;
ADOPengaturan.SQL.Add('update tbl_harga set Harga_Cuci="'+Edit1.Text+'", Upah_Permobil="'+Edit2.Text+'", Harga_Layanan="'+Edit3.Text+'", Upah_Layanan="'+Edit4.Text+'"');
ADOPengaturan.ExecSQL;

MessageDlg('Data Berhasil Disimpan !!',mtInformation,[mbOK],0);
Tampil;
BitSimpan.Enabled:=False;
BitBatal.Enabled:=False;
end;

end.
