object FListProfil: TFListProfil
  Left = 209
  Top = 170
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Daftar Pofil'
  ClientHeight = 354
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 953
    Height = 281
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 584
      Top = 56
      Width = 21
      Height = 22
      Caption = 'ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 584
      Top = 96
      Width = 82
      Height = 22
      Caption = 'Username'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 584
      Top = 136
      Width = 80
      Height = 22
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 584
      Top = 176
      Width = 44
      Height = 22
      Caption = 'Level'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitRefresh: TButton
      Left = 8
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Refresh'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitRefreshClick
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 553
      Height = 209
      DataSource = DataSource1
      FixedColor = clSkyBlue
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Times New Roman'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 111
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Username'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 125
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Password'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 148
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Level'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 126
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 704
      Top = 56
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 704
      Top = 96
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 704
      Top = 136
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 704
      Top = 176
      Width = 233
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'Admin'
        'User')
    end
    object BitTambah: TButton
      Left = 600
      Top = 224
      Width = 81
      Height = 33
      Caption = 'Tambah'
      TabOrder = 6
      OnClick = BitTambahClick
    end
    object BitEdit: TButton
      Left = 856
      Top = 224
      Width = 81
      Height = 33
      Caption = 'Edit'
      TabOrder = 7
      OnClick = BitEditClick
    end
    object BitHapus: TButton
      Left = 688
      Top = 224
      Width = 81
      Height = 33
      Caption = 'Hapus'
      TabOrder = 8
      OnClick = BitHapusClick
    end
    object BitBatal: TButton
      Left = 776
      Top = 224
      Width = 75
      Height = 33
      Caption = 'Batal'
      TabOrder = 9
      OnClick = BitBatalClick
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 296
    Width = 953
    Height = 49
    Color = clSilver
    TabOrder = 1
    object BitKeluar: TButton
      Left = 848
      Top = 8
      Width = 91
      Height = 33
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitKeluarClick
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = FLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Tbl_Login'
    Left = 24
    Top = 304
    object ADOTable1ID: TWideStringField
      FieldName = 'ID'
      Size = 30
    end
    object ADOTable1Username: TWideStringField
      FieldName = 'Username'
    end
    object ADOTable1Password: TWideStringField
      FieldName = 'Password'
    end
    object ADOTable1Level: TWideStringField
      FieldName = 'Level'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 56
    Top = 304
  end
end
