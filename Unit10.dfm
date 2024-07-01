object FTambahKaryawan: TFTambahKaryawan
  Left = -1348
  Top = 250
  Width = 639
  Height = 395
  Caption = 'Tambah Karyawan'
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
    Width = 601
    Height = 289
    BevelInner = bvLowered
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 89
      Height = 19
      Caption = 'Nomor Induk'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 112
      Height = 19
      Caption = 'Nama Karyawan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 95
      Height = 19
      Caption = 'Jenis Kelamin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 96
      Width = 90
      Height = 19
      Caption = 'Tempat Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 120
      Width = 93
      Height = 19
      Caption = 'Tanggal Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 144
      Width = 48
      Height = 19
      Caption = 'Alamat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 243
      Width = 77
      Height = 19
      Caption = 'No Telepon'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 304
      Top = 244
      Width = 42
      Height = 19
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 160
      Top = 24
      Width = 241
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 160
      Top = 48
      Width = 241
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 160
      Top = 96
      Width = 241
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 160
      Top = 242
      Width = 137
      Height = 21
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 160
      Top = 72
      Width = 241
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Laki-Laki'
        'Perempuan')
    end
    object DateTimePicker1: TDateTimePicker
      Left = 160
      Top = 120
      Width = 241
      Height = 21
      Date = 44467.570234375000000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 44467.570234375000000000
      TabOrder = 5
    end
    object Memo1: TMemo
      Left = 160
      Top = 146
      Width = 241
      Height = 89
      TabOrder = 6
    end
    object CHStatus: TCheckBox
      Left = 352
      Top = 244
      Width = 65
      Height = 17
      Caption = 'Aktif'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 304
    Width = 601
    Height = 41
    BevelInner = bvLowered
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    object BitTambah: TButton
      Left = 40
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Tambah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitEdit: TButton
      Left = 130
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object BitKeluar: TButton
      Left = 480
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object BitHapus: TButton
      Left = 220
      Top = 8
      Width = 87
      Height = 25
      Caption = 'Hapus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 32
    Top = 176
  end
  object ADOTable1: TADOTable
    Left = 72
    Top = 176
  end
end
