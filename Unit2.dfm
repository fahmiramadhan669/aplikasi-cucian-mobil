object FLaporanPendapatan: TFLaporanPendapatan
  Left = 217
  Top = 183
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 585
    Height = 41
    Caption = 'Laporan Pendapatan'
    Color = clBtnShadow
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
    Color = clBtnShadow
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
      Caption = 'Preview'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object BitKeluar: TBitBtn
      Left = 464
      Top = 88
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
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 16
    Top = 160
  end
end
