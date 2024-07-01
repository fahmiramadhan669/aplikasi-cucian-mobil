unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFMenu = class(TForm)
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    LblStatus: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    Shape1: TShape;
    Label3: TLabel;
    EdID: TEdit;
    EdNama: TEdit;
    DTTanggalAwal: TDateTimePicker;
    DTTanggalAkhir: TDateTimePicker;
    BitProses: TBitBtn;
    BitKeluar: TBitBtn;
    BitCari: TBitBtn;
    ADOKaryawan: TADOQuery;
    ADOProses: TADOQuery;
    ADOIzin: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

{$R *.dfm}

end.
