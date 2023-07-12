unit Form_Hubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    con1: TZConnection;
    ZQuery1: TZQuery;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn6: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
  private
    id: string;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm6.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('NAMA POIN TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('BOBOT TIDAK BOLEH KOSONG!');
  end
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO tb_poin (siswa_id, nama_poin, bobot, jenis, status) VALUES (:siswa_id, :nama_poin, :bobot, :jenis, :status)');
    ZQuery1.ParamByName('siswa_id').AsString := edt1.Text;
    ZQuery1.ParamByName('nama_poin').AsString := edt2.Text;
    ZQuery1.ParamByName('bobot').AsString := edt3.Text;
    ZQuery1.ParamByName('jenis').AsString := edt4.Text;
    ZQuery1.ParamByName('status').AsString := edt5.Text;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_poin');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiAwal;
  end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('siswa_id').AsString) and (edt2.Text = ZQuery1.FieldByName('nama_poin').AsString) and (edt3.Text = ZQuery1.FieldByName('bobot').AsString)and (edt4.Text = ZQuery1.FieldByName('jenis').AsString)and (edt5.Text = ZQuery1.FieldByName('status').AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!'); // UPDATE
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_poin SET siswa_id = :siswa_id, nama_poin = :nama_poin, bobot = :bobot, jenis = :jenis, status = :status WHERE id = :id');
    ZQuery1.ParamByName('siswa_id').AsString := edt1.Text;
    ZQuery1.ParamByName('nama_poin').AsString := edt2.Text;
    ZQuery1.ParamByName('bobot').AsString := edt3.Text;
    ZQuery1.ParamByName('jenis').AsString := edt4.Text;
    ZQuery1.ParamByName('status').AsString := edt5.Text;
    ZQuery1.ParamByName('id').AsString := id;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_poin');
    ZQuery1.Open;
    posisiAwal;
  end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tb_poin WHERE id = :id');
  ZQuery1.ParamByName('id').AsString := id;
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tb_poin');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  posisiAwal;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString; // DBGrid
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
edt5.Text:= ZQuery1.Fields[5].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
