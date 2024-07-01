unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, ADODB;

type
  TFLaporanPendapatan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DTLapPendapatanAwal: TDateTimePicker;
    BitProsesLapPendapatan: TBitBtn;
    BitKeluar: TBitBtn;
    DTLapPendapatanAkhir: TDateTimePicker;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanPendapatan: TFLaporanPendapatan;

implementation

{$R *.dfm}

end.
