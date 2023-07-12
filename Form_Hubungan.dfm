object Form6: TForm6
  Left = 130
  Top = 263
  Width = 1044
  Height = 542
  Caption = 'Form Poin'
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
    Left = 56
    Top = 40
    Width = 41
    Height = 13
    Caption = 'ID Siswa'
  end
  object lbl2: TLabel
    Left = 56
    Top = 72
    Width = 50
    Height = 13
    Caption = 'Nama Poin'
  end
  object lbl3: TLabel
    Left = 56
    Top = 104
    Width = 28
    Height = 13
    Caption = 'bobot'
  end
  object lbl4: TLabel
    Left = 56
    Top = 136
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object lbl5: TLabel
    Left = 56
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 128
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 128
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 128
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 128
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 48
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 136
    Top = 216
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 224
    Top = 216
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 312
    Top = 216
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 400
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 272
    Width = 425
    Height = 120
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn6: TButton
    Left = 488
    Top = 216
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 11
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 280
    Top = 152
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
    Left = 280
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_poin')
    Params = <>
    Left = 280
    Top = 96
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45118.712711469900000000
    ReportOptions.LastChange = 45118.715193761570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 40
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Left = 230.551330000000000000
          Top = 26.456710000000000000
          Width = 222.992270000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA PELANGGARAN POIN '
            'MA SMIP BANJARMASIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
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
            'ID SISWA')
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
            'NAMA POIN')
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
            'BOBOT')
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
            'JENIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 566.929500000000000000
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
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
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
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."siswa_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_poin'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."nama_poin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."bobot"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxDBDataset1."jenis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 566.929500000000000000
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
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 336
    Top = 96
  end
end
