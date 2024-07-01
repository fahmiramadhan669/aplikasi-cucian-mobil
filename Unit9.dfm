object FMenu: TFMenu
  Left = -1355
  Top = 496
  Width = 573
  Height = 299
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 8
    Top = 8
    Width = 537
    Height = 201
    Brush.Color = clBtnShadow
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 89
    Top = 59
    Width = 72
    Height = 19
    Caption = 'ID Employe'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 89
    Top = 88
    Width = 91
    Height = 19
    Caption = 'Employe Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 86
    Top = 118
    Width = 41
    Height = 19
    Caption = 'Status'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblStatus: TLabel
    Left = 201
    Top = 123
    Width = 5
    Height = 13
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 89
    Top = 155
    Width = 29
    Height = 19
    Caption = 'Date'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape3: TShape
    Left = 72
    Top = 145
    Width = 480
    Height = 1
    Pen.Color = clGray
  end
  object Shape1: TShape
    Left = 71
    Top = 184
    Width = 480
    Height = 1
    Pen.Color = clGray
  end
  object Label3: TLabel
    Left = 302
    Top = 151
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
  object EdID: TEdit
    Left = 201
    Top = 59
    Width = 161
    Height = 25
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'EdID'
  end
  object EdNama: TEdit
    Left = 201
    Top = 91
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = 'EdNama'
  end
  object DTTanggalAwal: TDateTimePicker
    Left = 144
    Top = 155
    Width = 153
    Height = 21
    CalColors.TitleBackColor = clLime
    Date = 44464.410351018520000000
    Format = 'dd MMMM yyyy'
    Time = 44464.410351018520000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DTTanggalAkhir: TDateTimePicker
    Left = 320
    Top = 154
    Width = 193
    Height = 21
    Date = 44467.664803032410000000
    Format = 'dd MMMM yyyy'
    Time = 44467.664803032410000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BitProses: TBitBtn
    Left = 335
    Top = 217
    Width = 98
    Height = 28
    Caption = 'Preview'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object BitKeluar: TBitBtn
    Left = 447
    Top = 216
    Width = 98
    Height = 28
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object BitCari: TBitBtn
    Left = 368
    Top = 60
    Width = 49
    Height = 25
    Caption = '---'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object ADOKaryawan: TADOQuery
    Parameters = <>
    Left = 16
    Top = 216
  end
  object ADOProses: TADOQuery
    Parameters = <>
    Left = 56
    Top = 216
  end
  object ADOIzin: TADOQuery
    Parameters = <>
    Left = 96
    Top = 216
  end
end
