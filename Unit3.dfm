object FPendapatanGaji: TFPendapatanGaji
  Left = 427
  Top = 178
  Width = 593
  Height = 448
  Caption = 'Gaji / Pendapatan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 561
    Height = 337
    Color = clBtnShadow
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
      Top = 136
      Width = 46
      Height = 19
      Caption = 'Harga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 208
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
      Top = 248
      Width = 187
      Height = 22
      Caption = 'Pendapatan Karyawan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 288
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
      Top = 168
      Width = 176
      Height = 22
      Caption = 'Pendapatan Permobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 224
      Top = 96
      Width = 65
      Height = 17
      DataField = 'Expr1000'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 224
      Top = 16
      Width = 217
      Height = 23
      Date = 44502.498089756950000000
      Time = 44502.498089756950000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 224
      Top = 136
      Width = 217
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 224
      Top = 168
      Width = 217
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 224
      Top = 208
      Width = 217
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 224
      Top = 248
      Width = 217
      Height = 21
      TabOrder = 4
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 224
      Top = 288
      Width = 217
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'Edit5'
    end
    object BtnHitung: TButton
      Left = 224
      Top = 56
      Width = 89
      Height = 25
      Caption = 'Hitung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 352
    Width = 561
    Height = 49
    Color = clBtnShadow
    TabOrder = 1
    object BitSimpan: TButton
      Left = 280
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
    end
    object BitBatal: TButton
      Left = 376
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
    end
    object BitKeluar: TButton
      Left = 472
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
    Top = 360
  end
  object ADOTotalJumlah: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select SUM (Qty) from tbl_transaksi')
    Left = 88
    Top = 360
    object ADOTotalJumlahExpr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTotalJumlah
    Left = 120
    Top = 360
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    TableName = 'Tbl_PendapatanGaji'
    Left = 152
    Top = 360
  end
  object ADOSimpan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_pendapatangaji')
    Left = 56
    Top = 360
    object ADOSimpanTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object ADOSimpanTotal_Mobil: TSmallintField
      FieldName = 'Total_Mobil'
    end
    object ADOSimpanPendapatan: TBCDField
      FieldName = 'Pendapatan'
      Precision = 19
    end
    object ADOSimpanGaji: TBCDField
      FieldName = 'Gaji'
      Precision = 19
    end
  end
end
