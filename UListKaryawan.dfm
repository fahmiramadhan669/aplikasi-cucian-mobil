object FListKaryawan: TFListKaryawan
  Left = 213
  Top = 150
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 484
  ClientWidth = 1018
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
    Width = 1001
    Height = 465
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 161
      Top = 14
      Width = 49
      Height = 19
      Caption = 'Filter : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 416
      Width = 50
      Height = 21
      Caption = 'Label2'
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 977
      Height = 353
      DataSource = DataSource1
      FixedColor = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NIK'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Nama'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 158
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tempat_Lahir'
          Title.Alignment = taCenter
          Title.Caption = 'Tempat Lahir'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 143
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tanggal_Lahir'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal Lahir'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 125
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Jabatan'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alamat'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 127
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NoTelepon'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 131
          Visible = True
        end>
    end
    object BitCari: TBitBtn
      Left = 824
      Top = 8
      Width = 153
      Height = 33
      Caption = 'Cari'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitCariClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        080000000000000100000000000000000000000100000000000038669200FFFF
        D100FFFFFD00FFFCE300B77D78000F6EE000339EFF0036A3FE00B78A7F00C098
        8600F6DAA200D0A59000EAA86B00FFFFD500F0C08500FCFBCC00D9C8AA00D4AD
        9400FFEEB000EFBC7F00D8B59900FCDD9B00FFFFEC00A7847300FFFFDA00FDF4
        C100FCF2BA00A87B7E00FEE2A000FBEAB2003A4C5E00C5ACA6009F736E00BA97
        7D00FEF8C5008B767400BCA3A300F3EBE500EBE0B700B6837D00146CCE00F0D4
        A300F6D09400FBDEA200C18E8700F8E2B400F3EEC400F0C58F00A0CAE700F8F6
        CB00B596810036A0FF00EEB77E00F3EBD100C9A29000FFFFF700FAD79500E3CF
        B000915C5900FFFCCA00EEEAC1003AAAFF00FFFECF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003F1E1B3F3F3F
        3F3F3F3F3F3F3F3F3F3F000500043F3F3F3F3F3F3F3F3F3F3F3F06330500043F
        3F3F3F3F3F3F3F3F3F3F3F07060500043F3F3F3F3F3F3F3F3F3F3F3F07060500
        1B3F3F3F3F3F3F3F3F3F3F3F3F0706281E3F3A08362C3F3F3F3F3F3F3F3F3D30
        2317263E0F0F39093F3F3F3F3F3F3F240B123B3E3E0D1625203F3F3F3F3F3F04
        0A2A193E18160202103F3F3F3F3F3F0B15341A01183702033C273F3F3F3F3F14
        380C0A3E0D03030D31323F3F3F3F3F111C0C131D010101012E083F3F3F3F3F08
        1D2D2F0E0A19223E103F3F3F3F3F3F3F140203130C0E2B1A173F3F3F3F3F3F3F
        3F1F3512151C29093F3F3F3F3F3F3F3F3F3F2109110B3F3F3F3F}
    end
    object BitKeluar: TBitBtn
      Left = 888
      Top = 416
      Width = 98
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitKeluarClick
    end
    object BitTampil: TBitBtn
      Left = 8
      Top = 10
      Width = 121
      Height = 31
      Caption = 'Refresh'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitTampilClick
    end
    object EdCari: TEdit
      Left = 360
      Top = 12
      Width = 457
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'EdCari'
      OnKeyPress = EdCariKeyPress
    end
    object CBFilter: TComboBox
      Left = 208
      Top = 12
      Width = 145
      Height = 23
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'NIK'
        'Nama'
        'Jabatan'
        'Alamat'
        'NoTelepon')
    end
  end
  object ADOList: TADOQuery
    Active = True
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_karyawan')
    Left = 80
    Top = 424
    object ADOListNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOListNama: TWideStringField
      FieldName = 'Nama'
      Size = 25
    end
    object ADOListJenisKelamin: TWideStringField
      FieldName = 'JenisKelamin'
      Size = 25
    end
    object ADOListTempat_Lahir: TWideStringField
      FieldName = 'Tempat_Lahir'
      Size = 25
    end
    object ADOListTanggal_Lahir: TDateTimeField
      FieldName = 'Tanggal_Lahir'
      DisplayFormat = 'dd-MM-yyyy'
    end
    object ADOListJabatan: TWideStringField
      FieldName = 'Jabatan'
      Size = 10
    end
    object ADOListAlamat: TWideStringField
      FieldName = 'Alamat'
      Size = 50
    end
    object ADOListNoTelepon: TWideStringField
      FieldName = 'NoTelepon'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOList
    Left = 112
    Top = 427
  end
end
