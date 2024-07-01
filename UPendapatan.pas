unit UPendapatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, ADODB, DB;

type
  TFPendapatan = class(TForm)
    Panel1: TPanel;
    BitKeluarTHR: TBitBtn;
    BitTambahPendapatan: TBitBtn;
    EdJumlahMobil: TEdit;
    DTPendapatan: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBatal: TBitBtn;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    Label3: TLabel;
    EdTotal: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPendapatan: TFPendapatan;

implementation

{$R *.dfm}

end.
