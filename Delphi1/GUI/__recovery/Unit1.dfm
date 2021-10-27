object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 363
  ClientWidth = 418
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
    Left = 72
    Top = 64
    Width = 70
    Height = 13
    Caption = 'Nama Lengkap'
  end
  object Label2: TLabel
    Left = 72
    Top = 96
    Width = 25
    Height = 13
    Caption = 'Kelas'
  end
  object Label3: TLabel
    Left = 72
    Top = 128
    Width = 101
    Height = 13
    Caption = 'Tanggal Pendaftaran'
  end
  object enama: TEdit
    Left = 192
    Top = 61
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object ekelas: TEdit
    Left = 192
    Top = 98
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object btnSimpan: TButton
    Left = 192
    Top = 184
    Width = 185
    Height = 41
    Caption = 'Simpan'
    TabOrder = 2
  end
  object tglDaftar: TDateTimePicker
    Left = 192
    Top = 141
    Width = 186
    Height = 21
    Date = 44496.000000000000000000
    Time = 0.796300219910335700
    TabOrder = 3
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'localhost'
    Port = 0
    Database = 'dbtest'
    User = ''
    Password = ''
    Protocol = ''
    Left = 64
    Top = 280
  end
end
