object Form1: TForm1
  Left = 214
  Top = 172
  Width = 1057
  Height = 547
  Caption = 'Form_Utama'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 384
    Top = 88
    Width = 249
    Height = 25
    Caption = 'PROGRAM POIN SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mm1: TMainMenu
    Left = 72
    Top = 40
    object MENU1: TMenuItem
      Caption = 'MENU'
      object FormSiswa1: TMenuItem
        Caption = 'Form Siswa'
        OnClick = FormSiswa1Click
      end
      object FormWaliKelas1: TMenuItem
        Caption = 'Form Wali Kelas'
        OnClick = FormWaliKelas1Click
      end
      object FormOrtu1: TMenuItem
        Caption = 'Form Orang Tua'
        OnClick = FormOrtu1Click
      end
      object FormKelas1: TMenuItem
        Caption = 'Form Kelas'
        OnClick = FormKelas1Click
      end
      object FormPoint1: TMenuItem
        Caption = 'Form Point'
        OnClick = FormPoint1Click
      end
      object FormHubungan1: TMenuItem
        Caption = 'Form Hubungan'
        OnClick = FormHubungan1Click
      end
      object FormSemester1: TMenuItem
        Caption = 'Form Semester'
        OnClick = FormSemester1Click
      end
      object FormUser1: TMenuItem
        Caption = 'Form User'
        OnClick = FormUser1Click
      end
    end
    object KELUAR1: TMenuItem
      Caption = 'KELUAR'
      OnClick = KELUAR1Click
    end
  end
end
