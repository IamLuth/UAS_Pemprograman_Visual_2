object Form2: TForm2
  Left = 510
  Top = 146
  Width = 1044
  Height = 540
  Caption = 'Form_Siswa'
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
  object lbl2: TLabel
    Left = 64
    Top = 32
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object lbl3: TLabel
    Left = 64
    Top = 64
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object lbl4: TLabel
    Left = 64
    Top = 96
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object lbl5: TLabel
    Left = 64
    Top = 128
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl6: TLabel
    Left = 64
    Top = 160
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object lbl7: TLabel
    Left = 64
    Top = 192
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object lbl8: TLabel
    Left = 328
    Top = 32
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl9: TLabel
    Left = 328
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl10: TLabel
    Left = 328
    Top = 96
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object lbl11: TLabel
    Left = 328
    Top = 128
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object lbl12: TLabel
    Left = 328
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 160
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 160
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 160
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 160
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 160
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 160
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 432
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 432
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt9: TEdit
    Left = 432
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object edt10: TEdit
    Left = 432
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object edt11: TEdit
    Left = 432
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 240
    Width = 489
    Height = 120
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nisn'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_lahir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 656
    Top = 24
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 12
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 656
    Top = 64
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 13
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 656
    Top = 104
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 14
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 656
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 15
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 656
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 16
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 656
    Top = 224
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 17
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 592
    Top = 168
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select *  from tb_siswa')
    Params = <>
    Left = 592
    Top = 96
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_Program_poin_Siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ASUS\Pictures\UAS_Program_Sistem_Poin_Siswa\libmysql.dl' +
      'l'
    Left = 592
    Top = 24
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45118.679475844900000000
    ReportOptions.LastChange = 45118.692591203700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 592
    Top = 232
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
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 1814.174400000000000000
        object Memo25: TfrxMemoView
          Left = 597.165740000000000000
          Top = 34.015770000000000000
          Width = 347.716760000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'LAPORAN DATA SISWA'
            'MA SMIP BANJARMASIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 64.252010000000000000
        Top = 264.567100000000000000
        Width = 1814.174400000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Top = 3.779530000000000000
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
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."nis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nisn'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."nisn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."nama_siswa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
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
        object Memo12: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tempat_lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."tempat_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 718.110700000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal_lahir'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 869.291900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_kelamin'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."jenis_kelamin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 1020.473100000000000000
          Top = 3.779530000000000000
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
        object Memo22: TfrxMemoView
          Left = 1133.859000000000000000
          Top = 3.779530000000000000
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
        object Memo23: TfrxMemoView
          Left = 1247.244900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'hp'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."hp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 1360.630800000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 60.472480000000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 1814.174400000000000000
        object Memo1: TfrxMemoView
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
            'NIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
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
            'NISN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 340.157700000000000000
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
            'NAMA SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
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
        object Memo6: TfrxMemoView
          Left = 563.149970000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'TEMPAT LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 718.110700000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'TANGGAL LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 1024.252630000000000000
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
        object Memo16: TfrxMemoView
          Left = 1133.859000000000000000
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
        object Memo17: TfrxMemoView
          Left = 1247.244900000000000000
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
            'HP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 1356.851270000000000000
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
        object Memo14: TfrxMemoView
          Left = 869.291900000000000000
          Width = 120.944960000000000000
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
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 592
    Top = 304
  end
end
