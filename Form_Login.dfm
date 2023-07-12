object Form10: TForm10
  Left = 517
  Top = 403
  Width = 350
  Height = 219
  Caption = 'Form_Login'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    334
    180)
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl2: TLabel
    Left = 64
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edt1: TEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 68
    Top = 99
    Width = 75
    Height = 25
    Anchors = []
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 96
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 3
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_program_poin_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ASUS\Pictures\UAS_Program_Sistem_Poin_Siswa\libmysql.dl' +
      'l'
    Left = 272
    Top = 32
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_login')
    Params = <>
    Left = 272
    Top = 96
  end
end
