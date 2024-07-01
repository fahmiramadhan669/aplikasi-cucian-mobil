object FTHR: TFTHR
  Left = 229
  Top = 57
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 606
  ClientWidth = 933
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
    Width = 913
    Height = 585
    Caption = 'Panel1'
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 169
      Top = 22
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
    object DBGrid1: TDBGrid
      Left = 24
      Top = 56
      Width = 873
      Height = 441
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
          FieldName = 'Plat_No'
          Title.Alignment = taCenter
          Title.Caption = 'Plat No'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 201
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Merk_Mobil'
          Title.Alignment = taCenter
          Title.Caption = 'Merk Mobil'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 230
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Nama_Mobil'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Mobil'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 253
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tanggal_Cuci'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal Cuci'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 149
          Visible = True
        end>
    end
    object BitKeluarTHR: TBitBtn
      Left = 776
      Top = 520
      Width = 122
      Height = 41
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitKeluarTHRClick
    end
    object EdCariTHR: TEdit
      Left = 376
      Top = 16
      Width = 393
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = EdCariTHRKeyPress
    end
    object CBFilterTHR: TComboBox
      Left = 224
      Top = 16
      Width = 145
      Height = 27
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        'Plat_No'
        'Merk_Mobil'
        'Nama_Mobil')
    end
    object BitCariTHR: TBitBtn
      Left = 792
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Cari'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitCariTHRClick
    end
    object BitTampilTHR: TBitBtn
      Left = 32
      Top = 18
      Width = 121
      Height = 25
      Caption = 'Refresh'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitTampilTHRClick
    end
  end
  object ADOListTHR: TADOQuery
    Active = True
    Connection = FTransaksi.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_transaksi')
    Left = 712
    Top = 536
    object ADOListTHRPlat_No: TWideStringField
      FieldName = 'Plat_No'
      Size = 8
    end
    object ADOListTHRMerk_Mobil: TWideStringField
      FieldName = 'Merk_Mobil'
    end
    object ADOListTHRNama_Mobil: TWideStringField
      FieldName = 'Nama_Mobil'
    end
    object ADOListTHRTanggal_Cuci: TDateTimeField
      FieldName = 'Tanggal_Cuci'
    end
    object ADOListTHRPoles_Body: TWideStringField
      FieldName = 'Poles_Body'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOListTHR
    Left = 680
    Top = 536
  end
end
