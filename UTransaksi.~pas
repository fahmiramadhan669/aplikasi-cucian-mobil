unit UTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  XPMan, QuickRpt, QRCtrls;

type
  TFTransaksi = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdPlatMobil: TEdit;
    DTTanggalTransaksi: TDateTimePicker;
    CBMerk: TComboBox;
    EdNamaMobil: TEdit;
    BitTambahTransaksi: TBitBtn;
    DBGrid1: TDBGrid;
    BitKeluarTransaksi: TBitBtn;
    Timer1: TTimer;
    ADOConnection1: TADOConnection;
    ADOSimpanTransaksi: TADOQuery;
    DataSource1: TDataSource;
    ADOTampilTransaksi: TADOQuery;
    ADOTampilTransaksiMerk_Mobil: TWideStringField;
    ADOTampilTransaksiNama_Mobil: TWideStringField;
    ADOTampilTransaksiTanggal_Cuci: TDateTimeField;
    XPManifest1: TXPManifest;
    Panel3: TPanel;
    ADOTampilTransaksiPlat_No: TWideStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1Plat_No: TWideStringField;
    ADOQuery1Merk_Mobil: TWideStringField;
    ADOQuery1Nama_Mobil: TWideStringField;
    ADOQuery1Tanggal_Cuci: TDateTimeField;
    ADOTampilTransaksiQty: TSmallintField;
    ADOQuery1Qty: TSmallintField;
    Label6: TLabel;
    CBPoles: TCheckBox;
    ADOTampilTransaksiPoles_Body: TWideStringField;
    ADOTampilTransaksiQty_Poles: TSmallintField;
    procedure Timer1Timer(Sender: TObject);
    procedure BitKeluarTransaksiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitTambahTransaksiClick(Sender: TObject);
    procedure DTTanggalTransaksiChange(Sender: TObject);
    procedure DTTanggalTransaksiCloseUp(Sender: TObject);
    procedure BitLaporanTransaksiClick(Sender: TObject);
    procedure BitBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridMouseWheel(Sender: TObject; Shift: TShiftState;
    WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CBMerkKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    procedure TampilkanTransaksi;
    procedure Bersih;
  public
    { Public declarations }
  end;

  TWheelDBGrid = class(TDBGrid)
  public
    property OnMouseWheel;
  end;

var
  FTransaksi: TFTransaksi;

implementation
uses ULapTransaksi, UPreviewTransaksi, UTHR, UReportTHR, UPendapatanGaji, ULaporanPendapatan;
{$R *.dfm}
procedure TFTransaksi.Bersih;
begin
EdPlatMobil.Text:='';
CBMerk.Text:='';
EdNamaMobil.Text:='';
DTTanggalTransaksi.Date:=now;
CBPoles.Checked:=false;
end;

procedure TFTransaksi.TampilkanTransaksi;
begin
ADOTampilTransaksi.Close;
ADOTampilTransaksi.SQL.Clear;
ADOTampilTransaksi.SQL.Add('select * from tbl_transaksi where tanggal_cuci=#'+FormatDateTime('yyyy/MM/dd',DTTanggalTransaksi.DateTime)+'#');
ADOTampilTransaksi.Open;

CBPoles.Checked:=false;
end;

procedure TFTransaksi.Timer1Timer(Sender: TObject);
begin
Label3.Caption:=FormatDateTime('HH:mm:ss',now);
end;

procedure TFTransaksi.BitKeluarTransaksiClick(Sender: TObject);
begin
close
end;

procedure TFTransaksi.FormShow(Sender: TObject);
begin
Bersih;
end;

procedure TFTransaksi.BitTambahTransaksiClick(Sender: TObject);
begin
if (EdPlatMobil.Text = '') and (EdNamaMobil.Text = '') and (CBMerk.Text = '') then
begin
MessageDlg('Pastikan Data yang akan Di Input!!',mtInformation,[mbOK],0)
end
else
Begin
  if CBPoles.Checked=true then
    begin
      ADOSimpanTransaksi.Close;
      ADOSimpanTransaksi.SQL.Clear;
      ADOSimpanTransaksi.SQL.Add('insert into tbl_transaksi values ("'+EdPlatMobil.Text+'","'+CBMerk.Text+'","'+EdNamaMobil.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggalTransaksi.Date)+'","'+inttostr(1)+'","YA","'+inttostr(1)+'")');
      ADOSimpanTransaksi.ExecSQL;
      EdPlatMobil.Text:='';
      CBMerk.Text:='';
      EdNamaMobil.Text:='';

      TampilkanTransaksi;
      EdPlatMobil.SetFocus;
    end
  else
    begin
      ADOSimpanTransaksi.Close;
      ADOSimpanTransaksi.SQL.Clear;
      ADOSimpanTransaksi.SQL.Add('insert into tbl_transaksi values ("'+EdPlatMobil.Text+'","'+CBMerk.Text+'","'+EdNamaMobil.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggalTransaksi.Date)+'","'+inttostr(1)+'","","'+inttostr(0)+'")');
      ADOSimpanTransaksi.ExecSQL;
      EdPlatMobil.Text:='';
      CBMerk.Text:='';
      EdNamaMobil.Text:='';

      TampilkanTransaksi;
      EdPlatMobil.SetFocus;
    end
end
end;

procedure TFTransaksi.DTTanggalTransaksiChange(Sender: TObject);
begin
TampilkanTransaksi;
end;

procedure TFTransaksi.DTTanggalTransaksiCloseUp(Sender: TObject);
begin
if DTTanggalTransaksi.DateTime>now then
begin
DTTanggalTransaksi.Date:=now;
TampilkanTransaksi;
end;
end;

procedure TFTransaksi.BitLaporanTransaksiClick(Sender: TObject);
begin
FLaporanTransaksi.ShowModal
end;

procedure TFTransaksi.BitBatalClick(Sender: TObject);
begin
Bersih;
BitTambahTransaksi.Caption :='Tambah';
end;

procedure TFTransaksi.FormCreate(Sender: TObject);
begin
TWheelDBGrid(DBGrid1).OnMouseWheel := DBGridMouseWheel;
end;

function GetNumScrollLines: Integer;
begin
  SystemParametersInfo(SPI_GETWHEELSCROLLLINES, 0, @Result, 0);
end;

procedure TFTransaksi.DBGridMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  Direction: Shortint;
begin
  Direction := 1;
  if WheelDelta = 0 then
    Exit
  else if WheelDelta > 0 then
    Direction := -1;

  with TDBGrid(Sender) do
  begin
    if Assigned(DataSource) and Assigned(DataSource.DataSet) then
      DataSource.DataSet.MoveBy(Direction * GetNumScrollLines);
    Invalidate;
  end;
end;

procedure TFTransaksi.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

procedure TFTransaksi.CBMerkKeyPress(Sender: TObject; var Key: Char);
begin
key:=#0
end;

end.
