object FListKaryawan: TFListKaryawan
  Left = 199
  Top = 127
  Width = 1235
  Height = 671
  Caption = 'Data Karyawan'
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
    Width = 1201
    Height = 617
    Color = clBtnShadow
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 16
      Width = 60
      Height = 22
      Caption = 'Filter : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 568
      Width = 56
      Height = 22
      Caption = 'Label2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitTampil: TBitBtn
      Left = 16
      Top = 16
      Width = 129
      Height = 25
      Caption = 'Tampilkan Semua'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object CBFilter: TComboBox
      Left = 248
      Top = 16
      Width = 153
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'CBFilter'
      Items.Strings = (
        'NIK'
        'Nama'
        'Jenis_Kelamin'
        'Alamat'
        'NoTelepon'
        'Status')
    end
    object EdCari: TEdit
      Left = 432
      Top = 16
      Width = 553
      Height = 21
      TabOrder = 2
      Text = 'EdCari'
    end
    object BitBtn1: TBitBtn
      Left = 1016
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cari'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 48
      Width = 1161
      Height = 497
      DataSource = DataSource1
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object BitKeluar: TBitBtn
      Left = 1088
      Top = 560
      Width = 91
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object ADOList: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_karyawan')
    Left = 1112
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOList
    Left = 1144
    Top = 16
  end
end
