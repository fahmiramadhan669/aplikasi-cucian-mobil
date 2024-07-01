unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TFPengaturan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BtnEdit: TButton;
    BtnBatal: TButton;
    BtnKeluar: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1Harga_Cuci: TBCDField;
    ADOQuery1Pendapatan_Permobil: TBCDField;
    ADOTable1: TADOTable;
    ADOTable1Harga_Cuci: TBCDField;
    ADOTable1Pendapatan_Permobil: TBCDField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPengaturan: TFPengaturan;

implementation

{$R *.dfm}

procedure TFPengaturan.FormShow(Sender: TObject);
begin
Edit1.Text := ADOTable1.fieldbyname(’Harga_Cuci’).AsInteger;
Edtit2.Text := ADOTable1.fieldbyname(’Pendapatan_Permobil’).AsInteger;
end;

end.
