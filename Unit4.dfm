object FPengaturan: TFPengaturan
  Left = 224
  Top = 290
  Width = 483
  Height = 242
  Caption = 'Pengaturan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 449
    Height = 137
    Color = clBtnShadow
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 120
      Height = 19
      Caption = 'Harga Cuci Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 141
      Height = 19
      Caption = 'Pendapatan Permobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 192
      Top = 24
      Width = 233
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 192
      Top = 56
      Width = 233
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Edit2'
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 152
    Width = 449
    Height = 41
    Color = clBtnShadow
    TabOrder = 1
    object BtnEdit: TButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Edit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BtnBatal: TButton
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Batal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object BtnKeluar: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Public\Apl' +
      'ikasi Pengelola Cucian Mobil\DatabaseApp.mdb;Persist Security In' +
      'fo=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_harga')
    Left = 48
    Top = 112
    object ADOQuery1Harga_Cuci: TBCDField
      FieldName = 'Harga_Cuci'
      Precision = 19
    end
    object ADOQuery1Pendapatan_Permobil: TBCDField
      FieldName = 'Pendapatan_Permobil'
      Precision = 19
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tbl_Harga'
    Left = 80
    Top = 112
    object ADOTable1Harga_Cuci: TBCDField
      FieldName = 'Harga_Cuci'
      Precision = 19
    end
    object ADOTable1Pendapatan_Permobil: TBCDField
      FieldName = 'Pendapatan_Permobil'
      Precision = 19
    end
  end
end
