object FPreviewTransaksi: TFPreviewTransaksi
  Left = 214
  Top = 59
  Width = 960
  Height = 670
  Caption = 'FPreviewTransaksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 12
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = FLaporanTransaksi.ADOProsesTransaksi
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      127.000000000000000000
      2794.000000000000000000
      127.000000000000000000
      2159.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object ColumnHeaderBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 145
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        383.645833333333400000
        1905.000000000000000000)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 240
        Top = 8
        Width = 228
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666680000
          635.000000000000000000
          21.166666666666670000
          603.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Laporan Transaksi'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
      object QRLabel2: TQRLabel
        Left = 320
        Top = 48
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          846.666666666666800000
          127.000000000000000000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 96
        Width = 153
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          0.000000000000000000
          254.000000000000000000
          404.812500000000000000)
        Brush.Color = clMedGray
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 152
        Top = 96
        Width = 137
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          402.166666666666600000
          254.000000000000000000
          362.479166666666700000)
        Brush.Color = clMedGray
        Shape = qrsRectangle
      end
      object QRShape3: TQRShape
        Left = 288
        Top = 96
        Width = 153
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          762.000000000000000000
          254.000000000000000000
          404.812500000000000000)
        Brush.Color = clMedGray
        Shape = qrsRectangle
      end
      object QRLabel3: TQRLabel
        Left = 24
        Top = 112
        Width = 95
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          63.500000000000000000
          296.333333333333400000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Plat No Mobil'
        Color = clMedGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 176
        Top = 112
        Width = 84
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          465.666666666666700000
          296.333333333333400000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Merk Mobil'
        Color = clMedGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 320
        Top = 112
        Width = 85
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          846.666666666666800000
          296.333333333333400000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nama Mobil'
        Color = clMedGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape5: TQRShape
        Left = 576
        Top = 96
        Width = 137
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1524.000000000000000000
          254.000000000000000000
          362.479166666666700000)
        Brush.Color = clMedGray
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Left = 616
        Top = 112
        Width = 55
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1629.833333333333000000
          296.333333333333400000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanggal'
        Color = clMedGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 440
        Top = 96
        Width = 137
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1164.166666666667000000
          254.000000000000000000
          362.479166666666700000)
        Brush.Color = clMedGray
        Shape = qrsRectangle
      end
      object QRLabel6: TQRLabel
        Left = 448
        Top = 112
        Width = 108
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1185.333333333333000000
          296.333333333333400000
          285.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ekstra Layanan'
        Color = clMedGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object DetailBand1: TQRBand
      Left = 48
      Top = 193
      Width = 720
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666680000
        1905.000000000000000000)
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 47
        Top = 8
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          124.354166666666700000
          21.166666666666670000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FLaporanTransaksi.ADOProsesTransaksi
        DataField = 'Plat_No'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 184
        Top = 8
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          21.166666666666670000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FLaporanTransaksi.ADOProsesTransaksi
        DataField = 'Merk_Mobil'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 328
        Top = 8
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          867.833333333333500000
          21.166666666666670000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FLaporanTransaksi.ADOProsesTransaksi
        DataField = 'Nama_Mobil'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 608
        Top = 8
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          21.166666666666670000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FLaporanTransaksi.ADOProsesTransaksi
        DataField = 'Tanggal_Cuci'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          0.000000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 152
        Top = 0
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          402.166666666666600000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 288
        Top = 0
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          762.000000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape9: TQRShape
        Left = 576
        Top = 0
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1524.000000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape10: TQRShape
        Left = 712
        Top = 0
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1883.833333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 440
        Top = 0
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1164.166666666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRDBText5: TQRDBText
        Left = 472
        Top = 8
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          21.166666666666670000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FLaporanTransaksi.ADOProsesTransaksi
        DataField = 'Poles_Body'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 48
      Top = 225
      Width = 720
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        103.187500000000000000
        1905.000000000000000000)
      BandType = rbSummary
      object QRShape12: TQRShape
        Left = 0
        Top = 0
        Width = 713
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1886.479166666667000000)
        Shape = qrsRectangle
      end
      object QRSysData1: TQRSysData
        Left = 112
        Top = 19
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          296.333333333333400000
          50.270833333333330000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 16
        Top = 19
        Width = 93
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          42.333333333333340000
          50.270833333333330000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Mobil : '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object PageFooterBand1: TQRBand
      Left = 48
      Top = 264
      Width = 720
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        169.333333333333300000
        1905.000000000000000000)
      BandType = rbPageFooter
    end
  end
end
