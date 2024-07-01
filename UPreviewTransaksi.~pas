unit UPreviewTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, StdCtrls, Mask, DBCtrls;

type
  TFPreviewTransaksi = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRShape14: TQRShape;
    QRDBText5: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPreviewTransaksi: TFPreviewTransaksi;

implementation
uses ULapTransaksi, UReport;
{$R *.dfm}

procedure TFPreviewTransaksi.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel2.Caption:='Tanggal : '+FormatDateTime('dd-MM-yyyy',FLaporanTransaksi.DTLapTransaksiAwal.Date)+' s/d '+FormatDateTime('dd-MM-yyyy',FLaporanTransaksi.DTLapTransaksiAkhir.Date);
end;

end.
