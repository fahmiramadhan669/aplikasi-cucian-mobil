object FPendapatanGaji: TFPendapatanGaji
  Left = 324
  Top = 38
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gaji / Pendapatan'
  ClientHeight = 617
  ClientWidth = 721
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
    Width = 705
    Height = 545
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 148
      Height = 22
      Caption = 'Masukan Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 96
      Width = 113
      Height = 22
      Caption = 'Jumlah Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 216
      Width = 95
      Height = 22
      Caption = 'Harga Cuci'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 376
      Width = 150
      Height = 22
      Caption = 'Pendapatan Kotor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 416
      Width = 126
      Height = 22
      Caption = 'Gaji Karyawan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 456
      Width = 144
      Height = 22
      Caption = 'Total Pendapatan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 296
      Width = 122
      Height = 22
      Caption = 'Upah Permobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 264
      Top = 96
      Width = 25
      Height = 17
      DataField = 'Expr1000'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 496
      Width = 152
      Height = 22
      Caption = 'Gaji Perkaryawan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 296
      Top = 96
      Width = 48
      Height = 22
      Caption = 'Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 176
      Width = 212
      Height = 22
      Caption = 'Jumlah Karyawan Masuk'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 264
      Top = 176
      Width = 25
      Height = 17
      DataField = 'Expr1000'
      DataSource = DataSource2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 296
      Top = 176
      Width = 85
      Height = 22
      Caption = 'Karyawan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 24
      Top = 136
      Width = 190
      Height = 22
      Caption = 'Jumlah Ekstra layanan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 296
      Top = 136
      Width = 48
      Height = 22
      Caption = 'Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 24
      Top = 256
      Width = 189
      Height = 22
      Caption = 'Harga Ekstra Layanan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 264
      Top = 136
      Width = 25
      Height = 17
      DataField = 'Expr1000'
      DataSource = DataSource3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 24
      Top = 336
      Width = 180
      Height = 22
      Caption = 'Upah Ekstra Layanan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DTPendapatanGaji: TDateTimePicker
      Left = 264
      Top = 16
      Width = 257
      Height = 23
      Date = 44502.498089756950000000
      Time = 44502.498089756950000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = DTPendapatanGajiChange
    end
    object Edit1: TEdit
      Left = 264
      Top = 216
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 264
      Top = 296
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 264
      Top = 376
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 264
      Top = 416
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 264
      Top = 456
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyPress = Edit5KeyPress
    end
    object BtnHitung: TButton
      Left = 264
      Top = 56
      Width = 257
      Height = 25
      Caption = 'Hitung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BtnHitungClick
    end
    object Edit6: TEdit
      Left = 264
      Top = 496
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyPress = Edit6KeyPress
    end
    object Edit7: TEdit
      Left = 264
      Top = 256
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit8: TEdit
      Left = 264
      Top = 336
      Width = 249
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 560
    Width = 705
    Height = 49
    Color = clSilver
    TabOrder = 1
    object BitSimpan: TButton
      Left = 424
      Top = 8
      Width = 83
      Height = 33
      Caption = 'Simpan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitSimpanClick
    end
    object BitBatal: TButton
      Left = 520
      Top = 8
      Width = 83
      Height = 33
      Caption = 'Batal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBatalClick
    end
    object BitKeluar: TButton
      Left = 616
      Top = 8
      Width = 83
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitKeluarClick
    end
  end
  object ADOTotalMobil: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select SUM (Qty) from tbl_transaksi')
    Left = 56
    Top = 576
    object ADOTotalMobilExpr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTotalMobil
    Left = 88
    Top = 576
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    TableName = 'Tbl_Harga'
    Left = 120
    Top = 576
    object ADOTable1Harga_Cuci: TBCDField
      FieldName = 'Harga_Cuci'
      KeyFields = 'Harga_Cuci'
      Precision = 19
    end
    object ADOTable1Upah_Permobil: TBCDField
      FieldName = 'Upah_Permobil'
      KeyFields = 'Upah_Permobil'
      currency = True
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
  object ADOSimpan: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_pendapatangaji')
    Left = 24
    Top = 576
    object ADOSimpanTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object ADOSimpanTotalMobil: TSmallintField
      FieldName = 'TotalMobil'
    end
    object ADOSimpanJumlahKaryawan: TSmallintField
      FieldName = 'JumlahKaryawan'
    end
    object ADOSimpanPendapatanKotor: TBCDField
      FieldName = 'PendapatanKotor'
      Precision = 19
    end
    object ADOSimpanGajiKaryawan: TBCDField
      FieldName = 'GajiKaryawan'
      Precision = 19
    end
    object ADOSimpanTotalPendapatan: TBCDField
      FieldName = 'TotalPendapatan'
      Precision = 19
    end
    object ADOSimpanGajiPerkaryawan: TBCDField
      FieldName = 'GajiPerkaryawan'
      Precision = 19
    end
  end
  object ADOTotalKaryawan: TADOQuery
    Active = True
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select SUM (Qty) from tbl_absen')
    Left = 152
    Top = 576
    object ADOTotalKaryawanExpr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTotalKaryawan
    Left = 184
    Top = 576
  end
  object ADOTotalLayanan: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select SUM (Qty_Poles) from tbl_transaksi')
    Left = 216
    Top = 576
    object ADOTotalLayananExpr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTotalLayanan
    Left = 248
    Top = 576
  end
end
