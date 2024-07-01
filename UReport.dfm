object FReport: TFReport
  Left = 406
  Top = 236
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Laporan Absensi'
  ClientHeight = 243
  ClientWidth = 586
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
    Width = 569
    Height = 225
    Color = clSilver
    TabOrder = 0
    object Label5: TLabel
      Left = 73
      Top = 102
      Width = 53
      Height = 19
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 358
      Top = 103
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
    object Label2: TLabel
      Left = 73
      Top = 70
      Width = 112
      Height = 19
      Caption = 'Nama Karyawan'
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
      Top = 38
      Width = 30
      Height = 19
      Caption = 'NIK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdID: TEdit
      Left = 209
      Top = 32
      Width = 264
      Height = 25
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'EdID'
      OnKeyPress = EdIDKeyPress
    end
    object BitKeluar: TBitBtn
      Left = 415
      Top = 160
      Width = 98
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitKeluarClick
    end
    object BitProses: TBitBtn
      Left = 288
      Top = 160
      Width = 97
      Height = 33
      Caption = 'Cetak'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitProsesClick
    end
    object EdNama: TEdit
      Left = 208
      Top = 67
      Width = 321
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'EdNama'
    end
    object BitCari: TBitBtn
      Left = 480
      Top = 28
      Width = 49
      Height = 29
      Caption = 'Cari'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitCariClick
    end
    object DTTanggalAwal: TDateTimePicker
      Left = 209
      Top = 107
      Width = 144
      Height = 23
      CalColors.TitleBackColor = clLime
      Date = 41205.410351018520000000
      Format = 'dd MMMM yyyy'
      Time = 41205.410351018520000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DTTanggalAkhir: TDateTimePicker
      Left = 376
      Top = 106
      Width = 153
      Height = 23
      Date = 41206.664803032410000000
      Format = 'dd MMMM yyyy'
      Time = 41206.664803032410000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object ADOKaryawan: TADOQuery
    Active = True
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from tbl_Karyawan')
    Left = 69
    Top = 155
    object ADOKaryawanNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOKaryawanNama: TWideStringField
      FieldName = 'Nama'
      Size = 30
    end
    object ADOKaryawanJenisKelamin: TWideStringField
      FieldName = 'JenisKelamin'
      Size = 10
    end
    object ADOKaryawanTempat_Lahir: TWideStringField
      FieldName = 'Tempat_Lahir'
      Size = 30
    end
    object ADOKaryawanTanggal_Lahir: TDateTimeField
      FieldName = 'Tanggal_Lahir'
    end
    object ADOKaryawanAlamat: TWideStringField
      FieldName = 'Alamat'
      Size = 50
    end
    object ADOKaryawanNoTelepon: TWideStringField
      FieldName = 'NoTelepon'
    end
  end
  object ADOProses: TADOQuery
    Active = True
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TBL_ABSEN')
    Left = 32
    Top = 157
    object ADOProsesNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOProsesTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
      DisplayFormat = 'dd MM yyyy'
    end
    object ADOProsesMasuk: TDateTimeField
      FieldName = 'Masuk'
      DisplayFormat = 'HH:mm'
    end
    object ADOProsesKeluar: TDateTimeField
      FieldName = 'Keluar'
      DisplayFormat = 'HH:mm'
    end
    object ADOProsesK_Masuk: TWideStringField
      FieldName = 'K_Masuk'
      Size = 5
    end
    object ADOProsesK_Izin: TWideStringField
      FieldName = 'K_Izin'
      Size = 15
    end
    object ADOProsesK_Sakit: TWideStringField
      FieldName = 'K_Sakit'
      Size = 5
    end
    object ADOProsesKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADOProsesNamakaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'Namakaryawan'
      LookupDataSet = ADOKaryawan
      LookupKeyFields = 'NIK'
      LookupResultField = 'Nama'
      KeyFields = 'NIK'
      Size = 30
      Lookup = True
    end
  end
  object ADOIzin: TADOQuery
    Connection = FAbsen.ADOConnection1
    Parameters = <>
    Left = 104
    Top = 152
  end
end
