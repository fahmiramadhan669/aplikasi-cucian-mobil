unit ULapAbsen1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFLapAbsen1 = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRBand1: TQRBand;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLapAbsen1: TFLapAbsen1;

implementation
uses UReport;
{$R *.dfm}

procedure TFLapAbsen1.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel11.Caption:='Periode :'+FormatDateTime('dd-MM-yyyy',FReport.DTTanggalAwal.Date)+ ' s/d '+FormatDateTime('dd-MM-yyyy',FReport.DTTanggalAkhir.Date);

if (QRDBText5.Caption='Ya') then
begin
QRDBText5.Font.Color:=clBlack;
end
else
QRDBText5.Font.Color:=clblue;

if (QRDBText6.Caption='Ya') then
begin
QRDBText6.Font.Color:=clBlack;
end
else
QRDBText6.Font.Color:=clRed;

end;

end.
