unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB, ADODB;

type
  TFPendapatanGaji = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBText1: TDBText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    BtnHitung: TButton;
    BitSimpan: TButton;
    BitBatal: TButton;
    BitKeluar: TButton;
    ADOConnection1: TADOConnection;
    ADOTotalJumlah: TADOQuery;
    DataSource1: TDataSource;
    ADOTotalJumlahExpr1000: TFloatField;
    ADOTable1: TADOTable;
    ADOSimpan: TADOQuery;
    ADOSimpanTanggal: TDateTimeField;
    ADOSimpanTotal_Mobil: TSmallintField;
    ADOSimpanPendapatan: TBCDField;
    ADOSimpanGaji: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPendapatanGaji: TFPendapatanGaji;
implementation

{$R *.dfm}

end.
