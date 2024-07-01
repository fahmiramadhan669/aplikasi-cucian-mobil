object FPengaturanHarga: TFPengaturanHarga
  Left = 446
  Top = 180
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pengaturan Harga'
  ClientHeight = 273
  ClientWidth = 500
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
    Width = 481
    Height = 209
    Color = clSilver
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
      Top = 72
      Width = 98
      Height = 19
      Caption = 'Upah Permobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 120
      Width = 153
      Height = 19
      Caption = 'Harga Ekstra Layanan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 168
      Width = 146
      Height = 19
      Caption = 'Upah Ekstra Layanan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 216
      Top = 24
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 216
      Top = 72
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 216
      Top = 120
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 216
      Top = 168
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = 'Edit4'
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 224
    Width = 481
    Height = 41
    Color = clSilver
    TabOrder = 1
    object BitEdit: TButton
      Left = 160
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
      OnClick = BitEditClick
    end
    object BitBatal: TButton
      Left = 320
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
      OnClick = BitBatalClick
    end
    object BitKeluar: TButton
      Left = 400
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
      OnClick = BitKeluarClick
    end
    object BitSimpan: TButton
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Simpan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitSimpanClick
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
    Left = 24
    Top = 232
  end
  object ADOPengaturan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_harga')
    Left = 56
    Top = 232
    object ADOPengaturanHarga_Cuci: TBCDField
      FieldName = 'Harga_Cuci'
      KeyFields = 'Harga_Cuci'
      Precision = 19
    end
    object ADOPengaturanUpah_Permobil: TBCDField
      FieldName = 'Upah_Permobil'
      KeyFields = 'Upah_Permobil'
      Precision = 19
    end
    object ADOPengaturanHarga_Layanan: TBCDField
      FieldName = 'Harga_Layanan'
      Precision = 19
    end
    object ADOPengaturanUpah_Layanan: TBCDField
      FieldName = 'Upah_Layanan'
      Precision = 19
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tbl_Harga'
    Left = 88
    Top = 232
    object ADOTable1Harga_Cuci: TBCDField
      FieldName = 'Harga_Cuci'
      KeyFields = 'Harga_Cuci'
      Precision = 19
    end
    object ADOTable1Upah_Permobil: TBCDField
      FieldName = 'Upah_Permobil'
      KeyFields = 'Upah_Permobil'
      Precision = 19
    end
    object ADOTable1Harga_Layanan: TBCDField
      FieldName = 'Harga_Layanan'
      Precision = 19
    end
    object ADOTable1Upah_Layanan: TBCDField
      FieldName = 'Upah_Layanan'
      Precision = 19
    end
  end
end
