object FLaporanPendapatan: TFLaporanPendapatan
  Left = 406
  Top = 226
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Laporan Pendapatan'
  ClientHeight = 203
  ClientWidth = 600
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
    Caption = 'Laporan Pendapatan'
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
    object DTLapPendapatanAwal: TDateTimePicker
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
    object BitProsesLapPendapatan: TBitBtn
      Left = 336
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
      OnClick = BitProsesLapPendapatanClick
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
    object DTLapPendapatanAkhir: TDateTimePicker
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
  object ADOProsesPendapatan: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_pendapatangaji')
    Left = 16
    Top = 160
    object ADOProsesPendapatanTanggal: TDateTimeField
      FieldName = 'Tanggal'
    end
    object ADOProsesPendapatanTotalMobil: TSmallintField
      FieldName = 'TotalMobil'
    end
    object ADOProsesPendapatanJumlahKaryawan: TSmallintField
      FieldName = 'JumlahKaryawan'
    end
    object ADOProsesPendapatanPendapatanKotor: TBCDField
      FieldName = 'PendapatanKotor'
      Precision = 19
    end
    object ADOProsesPendapatanTotalPendapatan: TBCDField
      FieldName = 'TotalPendapatan'
      Precision = 19
    end
  end
  object ADOTotalPendapatan: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select SUM (totalpendapatan) from tbl_pendapatangaji')
    Left = 48
    Top = 160
    object ADOTotalPendapatanExpr1000: TBCDField
      FieldName = 'Expr1000'
      Precision = 19
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTotalPendapatan
    Left = 80
    Top = 160
  end
end
