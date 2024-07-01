unit UPreviewGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFPreviewGaji = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    SummaryBand1: TQRBand;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape11: TQRShape;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape13: TQRShape;
    QRDBText5: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPreviewGaji: TFPreviewGaji;

implementation
uses ULaporanGaji, UPendapatanGaji; 
{$R *.dfm}

procedure TFPreviewGaji.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel2.Caption:='Tanggal : '+FormatDateTime('dd-MM-yyyy',FLaporanGaji.DTLapGajiAwal.Date)+' s/d '+FormatDateTime('dd-MM-yyyy',FLaporanGaji.DTLapGajiAkhir.Date);
end;

end.
