object FTransaksi: TFTransaksi
  Left = 269
  Top = 32
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 633
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 841
    Height = 41
    BorderStyle = bsSingle
    Caption = 'Transaksi'
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
    Top = 51
    Width = 841
    Height = 518
    Color = clSilver
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 197
      Height = 22
      Caption = 'Masukan Plat No Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 99
      Height = 22
      Caption = 'Merk Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 600
      Top = 12
      Width = 217
      Height = 65
      Pen.Color = clGray
      Shape = stRoundRect
    end
    object Label3: TLabel
      Left = 648
      Top = 24
      Width = 118
      Height = 36
      Caption = '00:00:00'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 96
      Width = 102
      Height = 22
      Caption = 'Nama Mobil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 136
      Width = 66
      Height = 22
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 184
      Width = 132
      Height = 22
      Caption = 'Ekstra Layanan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdPlatMobil: TEdit
      Left = 248
      Top = 16
      Width = 257
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTTanggalTransaksi: TDateTimePicker
      Left = 248
      Top = 136
      Width = 257
      Height = 23
      Date = 44474.472232418980000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 44474.472232418980000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnCloseUp = DTTanggalTransaksiCloseUp
      OnChange = DTTanggalTransaksiChange
    end
    object CBMerk: TComboBox
      Left = 248
      Top = 56
      Width = 257
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 2
      OnKeyPress = CBMerkKeyPress
      Items.Strings = (
        'TOYOTA'
        'HONDA'
        'MITSUBISHI'
        'DAIHATSU'
        'SUZUKI'
        'NISSAN'
        'WULING'
        'KIA'
        'BMW'
        'LEXUS'
        'FORD'
        'CHEVROLET')
    end
    object EdNamaMobil: TEdit
      Left = 248
      Top = 96
      Width = 257
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 256
      Width = 809
      Height = 249
      DataSource = DataSource1
      FixedColor = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
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
          Width = 133
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
          Width = 162
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
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tanggal_Cuci'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal Cuci'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 174
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Poles_Body'
          Title.Alignment = taCenter
          Title.Caption = 'Ekstra Layanan'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end>
    end
    object BitTambahTransaksi: TBitBtn
      Left = 248
      Top = 216
      Width = 257
      Height = 33
      Caption = 'Tambah'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitTambahTransaksiClick
    end
    object CBPoles: TCheckBox
      Left = 248
      Top = 184
      Width = 121
      Height = 17
      Caption = 'Poles Body'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 576
    Width = 841
    Height = 49
    Color = clSilver
    TabOrder = 2
    object BitKeluarTransaksi: TBitBtn
      Left = 704
      Top = 8
      Width = 121
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitKeluarTransaksiClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 632
    Top = 131
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Public\Aplikasi Pengelola Cucian Mobil\DatabaseApp.mdb;Mode=' +
      'Share Deny None;Persist Security Info=False;Jet OLEDB:System dat' +
      'abase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=' +
      '"";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet' +
      ' OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transacti' +
      'ons=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System' +
      ' Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't' +
      ' Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica ' +
      'Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 664
    Top = 131
  end
  object ADOSimpanTransaksi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_transaksi ')
    Left = 696
    Top = 131
  end
  object DataSource1: TDataSource
    DataSet = ADOTampilTransaksi
    Left = 728
    Top = 131
  end
  object ADOTampilTransaksi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_transaksi ')
    Left = 760
    Top = 131
    object ADOTampilTransaksiPlat_No: TWideStringField
      FieldName = 'Plat_No'
      KeyFields = 'Plat_No'
      Size = 8
    end
    object ADOTampilTransaksiMerk_Mobil: TWideStringField
      FieldName = 'Merk_Mobil'
      KeyFields = 'Merk_Mobil'
    end
    object ADOTampilTransaksiNama_Mobil: TWideStringField
      FieldName = 'Nama_Mobil'
      KeyFields = 'Nama_Mobil'
    end
    object ADOTampilTransaksiTanggal_Cuci: TDateTimeField
      Alignment = taCenter
      FieldName = 'Tanggal_Cuci'
      KeyFields = 'Tanggal_Cuci'
    end
    object ADOTampilTransaksiQty: TSmallintField
      FieldName = 'Qty'
      KeyFields = 'Qty'
    end
    object ADOTampilTransaksiPoles_Body: TWideStringField
      FieldName = 'Poles_Body'
      Size = 5
    end
    object ADOTampilTransaksiQty_Poles: TSmallintField
      FieldName = 'Qty_Poles'
    end
  end
  object XPManifest1: TXPManifest
    Left = 600
    Top = 131
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_transaksi')
    Left = 792
    Top = 131
    object ADOQuery1Plat_No: TWideStringField
      FieldName = 'Plat_No'
      Size = 8
    end
    object ADOQuery1Merk_Mobil: TWideStringField
      FieldName = 'Merk_Mobil'
    end
    object ADOQuery1Nama_Mobil: TWideStringField
      FieldName = 'Nama_Mobil'
    end
    object ADOQuery1Tanggal_Cuci: TDateTimeField
      FieldName = 'Tanggal_Cuci'
    end
    object ADOQuery1Qty: TSmallintField
      FieldName = 'Qty'
    end
  end
end
