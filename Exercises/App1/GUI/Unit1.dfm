object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 328
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 56
    Height = 13
    Caption = 'No Register'
  end
  object Label2: TLabel
    Left = 56
    Top = 80
    Width = 70
    Height = 13
    Caption = 'Nama Lengkap'
  end
  object Label3: TLabel
    Left = 56
    Top = 120
    Width = 59
    Height = 13
    Caption = 'Spp Bulanan'
  end
  object Label4: TLabel
    Left = 56
    Top = 160
    Width = 72
    Height = 13
    Caption = 'Tanggal Daftar'
  end
  object enoreg: TEdit
    Left = 176
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object enama: TEdit
    Left = 176
    Top = 77
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object espp: TEdit
    Left = 176
    Top = 117
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object bSimpan: TButton
    Left = 56
    Top = 216
    Width = 75
    Height = 41
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = bSimpanClick
  end
  object bEdit: TButton
    Left = 160
    Top = 216
    Width = 75
    Height = 41
    Caption = 'Edit'
    TabOrder = 4
  end
  object bHapus: TButton
    Left = 262
    Top = 216
    Width = 75
    Height = 41
    Caption = 'Hapus'
    TabOrder = 5
  end
  object dtglDaftar: TDateTimePicker
    Left = 176
    Top = 160
    Width = 161
    Height = 21
    Date = 44509.000000000000000000
    Time = 0.048940671294985800
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 376
    Top = 40
    Width = 320
    Height = 217
    DataSource = data
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object connection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'siswa'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\SEMESTER 5\Visual_3\delphi-project\Exercises\App1\GUI\libmysq' +
      'l.dll'
    Left = 416
    Top = 272
  end
  object siswa: TZQuery
    Connection = connection
    Active = True
    SQL.Strings = (
      'SELECT * FROM siswa')
    Params = <>
    Left = 600
    Top = 272
  end
  object data: TDataSource
    DataSet = siswa
    Left = 520
    Top = 272
  end
end
