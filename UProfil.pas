unit UProfil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TFProfil = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdUsername: TEdit;
    EdPassword: TEdit;
    CBLevel: TComboBox;
    BitKeluar: TButton;
    BitHapus: TButton;
    BitEdit: TButton;
    BitTambah: TButton;
    Label4: TLabel;
    EdProfil: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProfil: TFProfil;
  IsSimpan:Boolean;

implementation

{$R *.dfm}


end.
