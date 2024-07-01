object FLaporanGaji: TFLaporanGaji
  Left = 406
  Top = 259
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 203
  ClientWidth = 601
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
    Width = 585
    Height = 41
    Caption = 'Laporan Gaji'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 8
    Top = 56
    Width = 585
    Height = 137
    Color = clSilver
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
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
    object Label3: TLabel
      Left = 390
      Top = 26
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
    object DTLapGajiAwal: TDateTimePicker
      Left = 208
      Top = 24
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
      TabOrder = 0
    end
    object BitProsesLapGaji: TBitBtn
      Left = 328
      Top = 88
      Width = 113
      Height = 33
      Caption = 'Cetak'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitProsesLapGajiClick
    end
    object BitKeluar: TBitBtn
      Left = 464
      Top = 88
      Width = 105
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitKeluarClick
    end
    object DTLapGajiAkhir: TDateTimePicker
      Left = 408
      Top = 24
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
      TabOrder = 3
    end
  end
  object ADOProsesGaji: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_pendapatangaji')
    Left = 16
    Top = 160
    object ADOProsesGajiTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object ADOProsesGajiTotalMobil: TSmallintField
      FieldName = 'TotalMobil'
    end
    object ADOProsesGajiJumlahKaryawan: TSmallintField
      FieldName = 'JumlahKaryawan'
    end
    object ADOProsesGajiGajiKaryawan: TBCDField
      FieldName = 'GajiKaryawan'
      Precision = 19
    end
    object ADOProsesGajiGajiPerkaryawan: TBCDField
      FieldName = 'GajiPerkaryawan'
      Precision = 19
    end
  end
  object ADOTotalGaji: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select SUM (GajiPerkaryawan) from tbl_pendapatangaji')
    Left = 48
    Top = 160
    object ADOTotalGajiExpr1000: TBCDField
      FieldName = 'Expr1000'
      Precision = 19
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTotalGaji
    Left = 80
    Top = 160
  end
end
