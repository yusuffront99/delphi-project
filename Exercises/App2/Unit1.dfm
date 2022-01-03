object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 246
  ClientWidth = 722
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
    Top = 48
    Width = 74
    Height = 13
    Caption = 'Nomor Register'
  end
  object Label2: TLabel
    Left = 72
    Top = 80
    Width = 70
    Height = 13
    Caption = 'Nama Lengkap'
  end
  object Label3: TLabel
    Left = 72
    Top = 112
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Edit1: TEdit
    Left = 192
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 192
    Top = 112
    Width = 121
    Height = 21
    Date = 44509.000000000000000000
    Time = 0.962932557871681600
    TabOrder = 2
  end
  object simpan: TButton
    Left = 72
    Top = 160
    Width = 97
    Height = 33
    Caption = 'simpan'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 376
    Top = 40
    Width = 320
    Height = 177
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
