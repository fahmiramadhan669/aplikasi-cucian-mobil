unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, ComCtrls, ExtCtrls;

type
  TFTambahKaryawan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Memo1: TMemo;
    CHStatus: TCheckBox;
    Panel3: TPanel;
    BitTambah: TButton;
    BitEdit: TButton;
    BitKeluar: TButton;
    BitHapus: TButton;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTambahKaryawan: TFTambahKaryawan;

implementation

{$R *.dfm}

end.
