object FAbsen: TFAbsen
  Left = 207
  Top = 48
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 619
  ClientWidth = 987
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
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 969
    Height = 40
    Caption = 'Absensi Karyawan'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 62
    Width = 969
    Height = 555
    BevelInner = bvLowered
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 49
      Top = 91
      Width = 53
      Height = 19
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 49
      Top = 126
      Width = 79
      Height = 19
      Caption = 'Keterangan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 728
      Top = 11
      Width = 209
      Height = 54
      Alignment = taCenter
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -48
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 48
      Top = 56
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
    object Label1: TLabel
      Left = 48
      Top = 24
      Width = 30
      Height = 19
      Caption = 'NIK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdID: TEdit
      Left = 169
      Top = 19
      Width = 336
      Height = 25
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EdIDKeyPress
    end
    object EdNama: TEdit
      Left = 169
      Top = 51
      Width = 337
      Height = 23
      ReadOnly = True
      TabOrder = 1
    end
    object DTTanggal: TDateTimePicker
      Left = 169
      Top = 91
      Width = 336
      Height = 23
      CalColors.TitleBackColor = clLime
      Date = 44471.410351018520000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 44471.410351018520000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnCloseUp = DTTanggalCloseUp
      OnChange = DTTanggalChange
    end
    object EdKeterangan: TEdit
      Left = 169
      Top = 155
      Width = 336
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object RBMasuk: TRadioButton
      Left = 169
      Top = 123
      Width = 80
      Height = 22
      Caption = 'Masuk'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object RBPulang: TRadioButton
      Left = 257
      Top = 123
      Width = 80
      Height = 22
      Caption = 'Pulang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object RBSakit: TRadioButton
      Left = 409
      Top = 125
      Width = 72
      Height = 20
      Caption = 'Sakit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object RBIzin: TRadioButton
      Left = 349
      Top = 124
      Width = 52
      Height = 21
      Caption = 'Izin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object BitAbsen: TBitBtn
      Left = 168
      Top = 193
      Width = 337
      Height = 27
      Caption = 'ABSEN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitAbsenClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        080000000000000100000000000000000000000100000000000045AAFF004EB4
        FF00FFCCCC0054BAFF003398FC00FFFBF7003FA4FF003BA0F600388FCE002C8F
        E7003384BA003D95D5003A92D90065323200298AE000BBD4E2002781BF009865
        650000000000CC989800656565000098320000000000D8030000C51300000000
        0000A07EE4000100000000000000000000000000000000000000000000000000
        00003800000027000000BC1C9800DC078F000000000000000000000000000000
        0000120000000000000064ACED0064ACED007C030000C513000000000000040B
        6E00010000000000000000000000000000000000000000000000000000003800
        000027000000BC1C9800DC078F00000000000000000000000000000000001200
        000000000000C0ACED00C0ACED0020030000C5130000000000008C8CE8000100
        0000000000000000000000000000000000000000000000000000380000002700
        0000BC1C9800DC078F0000000000000000000000000000000000120000000000
        00001CADED001CADED00C4020000C5130000000000006884E400010000000000
        0000000000000000000000000000000000000000000054C1340054ADED0054AD
        ED0038000000C513000000000000AC9C6C000100000000000000000000000000
        00000000000000000000000000007000000027000000BC1C9800DC078F000000
        00000000000000000000000000001200000000000000B0ADED00B0ADED003002
        0000000000000000000000000000000000001200000000000000D4ADED00D4AD
        ED000C020000C51300000000000018B7E6000100000000000000000000000000
        00000000000000000000000000003800000027000000BC1C9800DC078F000000
        0000000000000000000000000000120000000000000030AEED0030AEED00B001
        0000C513000000000000D4D2E400010000000000000000000000000000000000
        000000000000000000003800000027000000BC1C9800DC078F00000000000000
        0000000000000000000012000000000000008CAEED008CAEED0054010000C513
        000000000000AC69880001000000000000000000000000000000000000000000
        00000000000054C134003C00000027000000BC1C9800DC078F00000000000000
        000000000000000000008000000001000000188FED00188FED00F4000000C513
        000000000000F43BE80001000000000000000000000000000000000000000000
        0000000000003800000027000000BC1C9800DC078F0000000000000000000000
        000000000000120000000000000048AFED0048AFED0098000000C51300000000
        0000DC80E5000100000000000000000000000000000000000000000000000000
        000054C13400ADCD340084AFED0084AFED0038000000C513000000000000544F
        E400010000000000000000000000000000000000000000000000161616161616
        1514161616161616161616161616161515151416161616161616161616161515
        1515141616161616161616161615151514151514161616161616161615151514
        16161515141616161616161116151416110D1615141616161616161313161613
        13111616151416161616161313020513131116161615141616161602130A1013
        11161616161615141616160F0904040E16161616161616151416161406000007
        161616161616161615141612010303011616161616161616161516120C0B0812
        1616161616161616161616141212121416161616161616161616161614121416
        1616161616161616161616161616161616161616161616161616}
    end
    object DBGrid1: TDBGrid
      Left = 49
      Top = 232
      Width = 889
      Height = 260
      DataSource = DataSource1
      FixedColor = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NamaKaryawan'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Karyawan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 225
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Masuk'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Keluar'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'K_Sakit'
          Title.Alignment = taCenter
          Title.Caption = 'Sakit'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'K_Izin'
          Title.Alignment = taCenter
          Title.Caption = 'Izin'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Keterangan'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 342
          Visible = True
        end>
    end
    object BitKeluar: TBitBtn
      Left = 824
      Top = 503
      Width = 114
      Height = 42
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitKeluarClick
    end
    object BitLookUp: TBitBtn
      Left = 520
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Daftar Karyawan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BitLookUpClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 368
    Top = 568
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
    Left = 400
    Top = 566
  end
  object ADOKaryawan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from tbl_Karyawan')
    Left = 464
    Top = 566
    object ADOKaryawanNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOKaryawanNama: TWideStringField
      FieldName = 'Nama'
      Size = 25
    end
    object ADOKaryawanJenisKelamin: TWideStringField
      DisplayWidth = 10
      FieldName = 'JenisKelamin'
      Size = 25
    end
    object ADOKaryawanTempat_Lahir: TWideStringField
      DisplayWidth = 30
      FieldName = 'Tempat_Lahir'
      Size = 25
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
  object DataSource1: TDataSource
    DataSet = ADOTampil
    Left = 496
    Top = 566
  end
  object ADOSimpan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_absen')
    Left = 528
    Top = 566
    object ADOSimpanNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOSimpanTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
    end
    object ADOSimpanMasuk: TDateTimeField
      FieldName = 'Masuk'
    end
    object ADOSimpanKeluar: TDateTimeField
      FieldName = 'Keluar'
    end
    object ADOSimpanK_Masuk: TWideStringField
      FieldName = 'K_Masuk'
      Size = 5
    end
    object ADOSimpanK_Izin: TWideStringField
      FieldName = 'K_Izin'
      Size = 15
    end
    object ADOSimpanK_Sakit: TWideStringField
      FieldName = 'K_Sakit'
      Size = 5
    end
    object ADOSimpanKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADOSimpanQty: TSmallintField
      FieldName = 'Qty'
    end
  end
  object ADOCari: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_absen')
    Left = 560
    Top = 566
  end
  object ADOTampil: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from Tbl_Absen')
    Left = 432
    Top = 568
    object ADOTampilNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOTampilMasuk: TDateTimeField
      FieldName = 'Masuk'
      DisplayFormat = 'HH:mm'
    end
    object ADOTampilKeluar: TDateTimeField
      FieldName = 'Keluar'
      DisplayFormat = 'HH:mm'
    end
    object ADOTampilK_Masuk: TWideStringField
      FieldName = 'K_Masuk'
      Size = 5
    end
    object ADOTampilK_Izin: TWideStringField
      FieldName = 'K_Izin'
      Size = 5
    end
    object ADOTampilK_Sakit: TWideStringField
      FieldName = 'K_Sakit'
      Size = 5
    end
    object ADOTampilKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADOTampilNamaKaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'NamaKaryawan'
      LookupDataSet = ADOKaryawan
      LookupKeyFields = 'NIK'
      LookupResultField = 'Nama'
      KeyFields = 'NIK'
      Size = 30
      Lookup = True
    end
    object ADOTampilTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
    end
  end
  object XPManifest1: TXPManifest
    Left = 592
    Top = 566
  end
end
