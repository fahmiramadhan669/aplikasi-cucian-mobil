object FReportTHR: TFReportTHR
  Left = 355
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 298
  ClientWidth = 641
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
    Width = 625
    Height = 281
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 73
      Top = 78
      Width = 83
      Height = 19
      Caption = 'Merk Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 73
      Top = 46
      Width = 67
      Height = 19
      Caption = 'PLAT NO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 72
      Top = 112
      Width = 84
      Height = 19
      Caption = 'Nama Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 72
      Top = 152
      Width = 121
      Height = 19
      Caption = 'Masukan Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 398
      Top = 154
      Width = 10
      Height = 23
      Caption = '-'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 72
      Top = 192
      Width = 72
      Height = 19
      Caption = 'Total Cuci '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 216
      Top = 192
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
    object EdPlatNo: TEdit
      Left = 217
      Top = 40
      Width = 376
      Height = 25
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EdPlatNoKeyPress
    end
    object BitKeluarTHR: TBitBtn
      Left = 480
      Top = 232
      Width = 105
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitKeluarTHRClick
    end
    object BitProsesTHR: TBitBtn
      Left = 360
      Top = 233
      Width = 105
      Height = 32
      Caption = 'Cetak'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitProsesTHRClick
    end
    object EdMerkMobil: TEdit
      Left = 216
      Top = 75
      Width = 377
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdNamaMobil: TEdit
      Left = 216
      Top = 115
      Width = 377
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DTTHRAwal: TDateTimePicker
      Left = 216
      Top = 152
      Width = 169
      Height = 27
      Date = 44474.628768182870000000
      Format = 'dd MMMM yyyy'
      Time = 44474.628768182870000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DTTHRAkhir: TDateTimePicker
      Left = 424
      Top = 152
      Width = 169
      Height = 27
      Date = 44476.470943136580000000
      Format = 'dd MMMM yyyy'
      Time = 44476.470943136580000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnChange = DTTHRAkhirChange
    end
  end
  object ADOProsesTHR: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_transaksi')
    Left = 24
    Top = 168
    object ADOProsesTHRPlat_No: TWideStringField
      FieldName = 'Plat_No'
      Size = 8
    end
    object ADOProsesTHRMerk_Mobil: TWideStringField
      FieldName = 'Merk_Mobil'
    end
    object ADOProsesTHRNama_Mobil: TWideStringField
      FieldName = 'Nama_Mobil'
    end
    object ADOProsesTHRTanggal_Cuci: TDateTimeField
      FieldName = 'Tanggal_Cuci'
    end
    object ADOProsesTHRPoles_Body: TWideStringField
      FieldName = 'Poles_Body'
      Size = 5
    end
    object ADOProsesTHRQty: TSmallintField
      FieldName = 'Qty'
    end
    object ADOProsesTHRQty_Poles: TSmallintField
      FieldName = 'Qty_Poles'
    end
  end
  object ADOTHR: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_transaksi')
    Left = 24
    Top = 200
    object ADOTHRPlat_No: TWideStringField
      FieldName = 'Plat_No'
      Size = 8
    end
    object ADOTHRMerk_Mobil: TWideStringField
      FieldName = 'Merk_Mobil'
    end
    object ADOTHRNama_Mobil: TWideStringField
      FieldName = 'Nama_Mobil'
    end
    object ADOTHRTanggal_Cuci: TDateTimeField
      FieldName = 'Tanggal_Cuci'
    end
    object ADOTHRPoles_Body: TWideStringField
      FieldName = 'Poles_Body'
      Size = 5
    end
    object ADOTHRQty: TSmallintField
      FieldName = 'Qty'
    end
    object ADOTHRQty_Poles: TSmallintField
      FieldName = 'Qty_Poles'
    end
  end
  object ADOTotalCuci: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select SUM (Qty) from tbl_transaksi')
    Left = 24
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = ADOTotalCuci
    Left = 56
    Top = 232
  end
end
