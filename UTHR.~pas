unit UTHR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, ADODB;

type
  TFTHR = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitKeluarTHR: TBitBtn;
    EdCariTHR: TEdit;
    CBFilterTHR: TComboBox;
    BitCariTHR: TBitBtn;
    ADOListTHR: TADOQuery;
    DataSource1: TDataSource;
    ADOListTHRMerk_Mobil: TWideStringField;
    ADOListTHRNama_Mobil: TWideStringField;
    ADOListTHRTanggal_Cuci: TDateTimeField;
    BitTampilTHR: TBitBtn;
    ADOListTHRPlat_No: TWideStringField;
    ADOListTHRPoles_Body: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure BitCariTHRClick(Sender: TObject);
    procedure BitKeluarTHRClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EdCariTHRKeyPress(Sender: TObject; var Key: Char);
    procedure BitTampilTHRClick(Sender: TObject);
  private
    { Private declarations }
    procedure TampilkanTHR;
  public
    { Public declarations }
  end;

var
  FTHR: TFTHR;

implementation
{$R *.dfm}
uses UTransaksi, UReportTHR;
procedure TFTHR.TampilkanTHR;
begin
ADOListTHR.Close;
ADOListTHR.SQL.Clear;
ADOListTHR.SQL.Add('select * from tbl_transaksi order by Plat_No');
ADOListTHR.Open;
end;

procedure TFTHR.FormShow(Sender: TObject);
begin
EdCariTHR.Text:='';
CBFilterTHR.ItemIndex:=1;
BitTampilTHR.SetFocus;
ADOListTHR.Close;
TampilkanTHR;
end;

procedure TFTHR.BitCariTHRClick(Sender: TObject);
begin
ADOListTHR.Close;
ADOListTHR.SQL.Clear;
ADOListTHR.SQL.Add('select*from tbl_transaksi where '+CBFilterTHR.Text+' like "%'+EdCariTHR.Text+'%"');
ADOListTHR.Open;
end;

procedure TFTHR.BitKeluarTHRClick(Sender: TObject);
begin
close
end;

procedure TFTHR.DBGrid1DblClick(Sender: TObject);
begin
  if ADOListTHR.IsEmpty then
  else
  begin
  FReportTHR.EdPlatNo.Text:=ADOListTHRPlat_No.Value;
  FReportTHR.EdMerkMobil.Text:=ADOListTHRMerk_Mobil.Value;
  FReportTHR.EdNamaMobil.Text:=ADOListTHRNama_Mobil.Value;
  FReportTHR.ShowModal;
  end
end;

procedure TFTHR.EdCariTHRKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
Begin
ADOListTHR.Close;
ADOListTHR.SQL.Clear;
ADOListTHR.SQL.Add('select*from tbl_transaksi where '+CBFilterTHR.Text+' like "%'+EdCariTHR.Text+'%" order by Tanggal_Cuci');
ADOListTHR.Open;
End
end;

procedure TFTHR.BitTampilTHRClick(Sender: TObject);
begin
TampilkanTHR;
EdCariTHR.Text:='';
CBFilterTHR.ItemIndex:=1
end;

end.
