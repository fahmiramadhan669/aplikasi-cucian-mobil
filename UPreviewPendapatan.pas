unit UPreviewPendapatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFPreviewPendapatan = class(TForm)
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
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    SummaryBand1: TQRBand;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape10: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRShape11: TQRShape;
    QRLabel7: TQRLabel;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPreviewPendapatan: TFPreviewPendapatan;

implementation
uses UPendapatanGaji, ULaporanPendapatan;
{$R *.dfm}

procedure TFPreviewPendapatan.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel2.Caption:='Tanggal : '+FormatDateTime('dd-MM-yyyy',FLaporanPendapatan.DTLapPendapatanAwal.Date)+' s/d '+FormatDateTime('dd-MM-yyyy',FLaporanPendapatan.DTLapPendapatanAkhir.Date);
end;

end.
