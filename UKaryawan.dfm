object FKaryawan: TFKaryawan
  Left = 374
  Top = 143
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Data Karyawan'
  ClientHeight = 440
  ClientWidth = 617
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
    Width = 601
    Height = 377
    BevelInner = bvLowered
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 30
      Height = 19
      Caption = 'NIK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 112
      Height = 19
      Caption = 'Nama Karyawan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 96
      Width = 95
      Height = 19
      Caption = 'Jenis Kelamin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 128
      Width = 90
      Height = 19
      Caption = 'Tempat Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 160
      Width = 93
      Height = 19
      Caption = 'Tanggal Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 232
      Width = 48
      Height = 19
      Caption = 'Alamat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 323
      Width = 77
      Height = 19
      Caption = 'No Telepon'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 192
      Width = 53
      Height = 19
      Caption = 'Jabatan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 176
      Top = 32
      Width = 281
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 176
      Top = 64
      Width = 281
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 176
      Top = 128
      Width = 281
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 176
      Top = 322
      Width = 281
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 176
      Top = 96
      Width = 281
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 4
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        'Laki-Laki'
        'Perempuan')
    end
    object DateTimePicker1: TDateTimePicker
      Left = 176
      Top = 160
      Width = 281
      Height = 23
      Date = 41204.570234375000000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 41204.570234375000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Memo1: TMemo
      Left = 176
      Top = 226
      Width = 281
      Height = 89
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ComboBox2: TComboBox
      Left = 176
      Top = 192
      Width = 281
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 7
      OnKeyPress = ComboBox2KeyPress
      Items.Strings = (
        'Admin'
        'Karyawan')
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 392
    Width = 601
    Height = 41
    BevelInner = bvLowered
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    object BitTambah: TButton
      Left = 200
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Tambah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitTambahClick
    end
    object BitEdit: TButton
      Left = 298
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitEditClick
    end
    object BitKeluar: TButton
      Left = 496
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitKeluarClick
    end
    object BitHapus: TButton
      Left = 396
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Hapus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitHapusClick
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_karyawan')
    Left = 568
    Top = 344
    object ADOQuery1NIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOQuery1Nama: TWideStringField
      FieldName = 'Nama'
      Size = 25
    end
    object ADOQuery1JenisKelamin: TWideStringField
      FieldName = 'JenisKelamin'
      Size = 25
    end
    object ADOQuery1Tempat_Lahir: TWideStringField
      FieldName = 'Tempat_Lahir'
      Size = 25
    end
    object ADOQuery1Tanggal_Lahir: TDateTimeField
      FieldName = 'Tanggal_Lahir'
      DisplayFormat = 'dd-MM-yyyy'
    end
    object ADOQuery1Alamat: TWideStringField
      FieldName = 'Alamat'
      Size = 50
    end
    object ADOQuery1NoTelepon: TWideStringField
      FieldName = 'NoTelepon'
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    TableName = 'Tbl_Karyawan'
    Left = 536
    Top = 344
    object ADOTable1NIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOTable1Nama: TWideStringField
      FieldName = 'Nama'
      Size = 25
    end
    object ADOTable1JenisKelamin: TWideStringField
      FieldName = 'JenisKelamin'
      Size = 25
    end
    object ADOTable1Tempat_Lahir: TWideStringField
      FieldName = 'Tempat_Lahir'
      Size = 25
    end
    object ADOTable1Tanggal_Lahir: TDateTimeField
      FieldName = 'Tanggal_Lahir'
    end
    object ADOTable1Jabatan: TWideStringField
      FieldName = 'Jabatan'
      Size = 10
    end
    object ADOTable1Alamat: TWideStringField
      FieldName = 'Alamat'
      Size = 50
    end
    object ADOTable1NoTelepon: TWideStringField
      FieldName = 'NoTelepon'
    end
  end
end
