object Form4: TForm4
  Left = 432
  Top = 166
  Width = 1044
  Height = 540
  Caption = 'Form Ortu'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 40
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 64
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl3: TLabel
    Left = 64
    Top = 96
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object lbl4: TLabel
    Left = 64
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object lbl5: TLabel
    Left = 352
    Top = 32
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object lbl6: TLabel
    Left = 352
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl7: TLabel
    Left = 352
    Top = 96
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl8: TLabel
    Left = 352
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Agama'
  end
  object lbl9: TLabel
    Left = 352
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edt2: TEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object edt3: TEdit
    Left = 136
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object edt4: TEdit
    Left = 136
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object edt5: TEdit
    Left = 432
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object edt6: TEdit
    Left = 432
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object edt7: TEdit
    Left = 432
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object btn1: TButton
    Left = 64
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 168
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 376
    Top = 208
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 480
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 11
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 248
    Width = 489
    Height = 120
    DataSource = ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt8: TEdit
    Left = 432
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object edt9: TEdit
    Left = 432
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object btn6: TButton
    Left = 568
    Top = 208
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 15
    OnClick = btn6Click
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
    Left = 656
    Top = 32
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_ortu')
    Params = <>
    Left = 656
    Top = 88
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 656
    Top = 144
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45118.705302592600000000
    ReportOptions.LastChange = 45118.709668587970000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 32
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 500.000000000000000000
      PaperHeight = 216.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 1814.174400000000000000
        object Memo21: TfrxMemoView
          Left = 408.189240000000000000
          Top = 7.559060000000000000
          Width = 245.669450000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA ORANG TUA '
            'MA SMIP BANJARMASIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 64.252010000000000000
        Top = 162.519790000000000000
        Width = 1814.174400000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'PENDIDIKAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'PEKERJAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'TELP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 680.315400000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 793.701300000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'JENIS KELAMIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 907.087200000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'AGAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 1020.473100000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 1814.174400000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 226.771800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pendidikan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."pendidikan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 453.543600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pekerjaan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."pekerjaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 566.929500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 680.315400000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 793.701300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."jk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 907.087200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'agama'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."agama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 1020.473100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'is_active'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."is_active"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 600
    Top = 96
  end
end
