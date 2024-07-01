object FLaporanTransaksi: TFLaporanTransaksi
  Left = 388
  Top = 232
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Laporan Transaksi'
  ClientHeight = 205
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 585
    Height = 41
    Caption = 'Laporan Transaksi'
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
    object DTLapTransaksiAwal: TDateTimePicker
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
      Top = 80
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
      Left = 472
      Top = 80
      Width = 97
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
    object DTLapTransaksiAkhir: TDateTimePicker
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
  object ADOProsesTransaksi: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_transaksi')
    Left = 16
    Top = 144
    object ADOProsesTransaksiPlat_No: TWideStringField
      FieldName = 'Plat_No'
      Size = 8
    end
    object ADOProsesTransaksiMerk_Mobil: TWideStringField
      FieldName = 'Merk_Mobil'
    end
    object ADOProsesTransaksiNama_Mobil: TWideStringField
      FieldName = 'Nama_Mobil'
    end
    object ADOProsesTransaksiTanggal_Cuci: TDateTimeField
      FieldName = 'Tanggal_Cuci'
      DisplayFormat = 'dd MM yyyy'
    end
    object ADOProsesTransaksiPoles_Body: TWideStringField
      FieldName = 'Poles_Body'
      Size = 5
    end
  end
end
