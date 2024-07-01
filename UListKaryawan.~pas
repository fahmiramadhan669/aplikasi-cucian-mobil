unit UListKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TFListKaryawan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    BitCari: TBitBtn;
    BitKeluar: TBitBtn;
    BitTampil: TBitBtn;
    EdCari: TEdit;
    CBFilter: TComboBox;
    ADOList: TADOQuery;
    DataSource1: TDataSource;
    ADOListNIK: TWideStringField;
    ADOListNama: TWideStringField;
    ADOListJenisKelamin: TWideStringField;
    ADOListTempat_Lahir: TWideStringField;
    ADOListTanggal_Lahir: TDateTimeField;
    ADOListAlamat: TWideStringField;
    ADOListNoTelepon: TWideStringField;
    ADOListJabatan: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure BitCariClick(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitTampilClick(Sender: TObject);
    procedure EdCariKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure TampilkanKaryawan;
  public
    { Public declarations }
  end;

var
  FListKaryawan: TFListKaryawan;

implementation

{$R *.dfm}
uses UAbsen,UKaryawan,ureport;
procedure TFListKaryawan.TampilkanKaryawan ;
begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select * from tbl_Karyawan order by nama');
ADOList.Open;
end;

procedure TFListKaryawan.FormShow(Sender: TObject);
begin
EdCari.Text:='';
CBFilter.ItemIndex:=1;
BitTampil.SetFocus;
ADOList.Close;
TampilkanKaryawan;
end;

procedure TFListKaryawan.BitCariClick(Sender: TObject);
begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select*from tbl_karyawan where '+CBFilter.Text+' like "%'+EdCari.Text+'%" ');
ADOList.Open;
end;

procedure TFListKaryawan.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFListKaryawan.DBGrid1DblClick(Sender: TObject);
begin
if Label2.Caption='Laporan' then
Begin
  if ADOList.IsEmpty then
  else
  begin
  FReport.EdID.Text:=ADOListNIK.Value;
  FReport.EdNama.Text:=ADOListNama.Value;
  close
  end
End
Else
BEGIN
  if ADOList.IsEmpty then
  else
  begin
  FKaryawan.Edit1.Text:=ADOListNIK.Value;
  FKaryawan.Edit2.Text:=ADOListNama.Value;
  FKaryawan.ComboBox1.Text:=ADOListJenisKelamin.Value;
  FKaryawan.Edit3.Text:=ADOListTempat_Lahir.Value;
  FKaryawan.DateTimePicker1.date:=ADOListTanggal_Lahir.AsDateTime;
  FKaryawan.ComboBox2.Text:=ADOListJabatan.Value;
  FKaryawan.Memo1.Text:=ADOListAlamat.Value;
  FKaryawan.Edit4.Text:=ADOListNoTelepon.Value;
  FKaryawan.ShowModal;
  end
END

end;

procedure TFListKaryawan.BitTampilClick(Sender: TObject);
begin
TampilkanKaryawan;
EdCari.Text:='';
CBFilter.ItemIndex:=1
end;

procedure TFListKaryawan.EdCariKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
Begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select*from tbl_karyawan where '+CBFilter.Text+' like "%'+EdCari.Text+'%" order by Nama');
ADOList.Open;
End
end;

end.
