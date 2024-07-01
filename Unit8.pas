unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, ExtCtrls;

type
  TFListKaryawan = class(TForm)
    Panel1: TPanel;
    BitTampil: TBitBtn;
    Label1: TLabel;
    CBFilter: TComboBox;
    EdCari: TEdit;
    BitBtn1: TBitBtn;
    ADOList: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitKeluar: TBitBtn;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListKaryawan: TFListKaryawan;

implementation

{$R *.dfm}

end.
