unit Form_Semester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
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
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
   id : string;
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
end;

procedure TForm8.posisiawal;
begin
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
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
edt9.Enabled:= False;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn1Click(Sender: TObject);
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
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('ID POIN TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('ID WALI TIDAK BOLEH KOSONG!');
  end
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO tb_semester (siswa_id, poin_id, wali_id, ortu_id, kelas_id, tanggal, semester, status, tingkat_kelas) VALUES (:siswa_id, :poin_id, :wali_id, :ortu_id, :kelas_id, :tanggal, :semester, :status, :tingkat_kelas)');
    ZQuery1.ParamByName('siswa_id').AsString := edt1.Text;
    ZQuery1.ParamByName('poin_id').AsString := edt2.Text;
    ZQuery1.ParamByName('wali_id').AsString := edt3.Text;
    ZQuery1.ParamByName('ortu_id').AsString := edt4.Text;
    ZQuery1.ParamByName('kelas_id').AsString := edt5.Text;
    ZQuery1.ParamByName('tanggal').AsString := edt6.Text;
    ZQuery1.ParamByName('semester').AsString := edt7.Text;
    ZQuery1.ParamByName('status').AsString := edt8.Text;
    ZQuery1.ParamByName('tingkat_kelas').AsString := edt9.Text;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_semester');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiAwal;
  end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tb_semester WHERE id = :id');
  ZQuery1.ParamByName('id').AsString := id;
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tb_semester');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  posisiAwal;
end;


procedure TForm8.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') or (edt9.Text = '')then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('siswa_id').AsString) and (edt2.Text = ZQuery1.FieldByName('poin_id').AsString) and (edt3.Text = ZQuery1.FieldByName('wali_id').AsString)and (edt4.Text = ZQuery1.FieldByName('ortu_id').AsString) and (edt5.Text = ZQuery1.FieldByName('kelas_id').AsString)and (edt6.Text = ZQuery1.FieldByName('tanggal').AsString)and (edt7.Text = ZQuery1.FieldByName('semester').AsString) and (edt8.Text = ZQuery1.FieldByName('status').AsString) and (edt9.Text = ZQuery1.FieldByName('tingkat_kelas').AsString)then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!'); // UPDATE
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_semster SET siswa_id = :siswa_id, poin_id = :poin_id, wali_id = :wali_id, ortu_id = :ortu_id, kelas_id = :kelas_id, tanggal = :tanggal, semester = :semester, status = :status, tingkat_kelas = :tingkat_kelas WHERE id = :id');
    ZQuery1.ParamByName('siswa_id').AsString := edt1.Text;
    ZQuery1.ParamByName('poin_id').AsString := edt2.Text;
     ZQuery1.ParamByName('wali_id').AsString := edt3.Text;
      ZQuery1.ParamByName('ortu_id').AsString := edt4.Text;
       ZQuery1.ParamByName('kelas_id').AsString := edt5.Text;
        ZQuery1.ParamByName('tanggal').AsString := edt6.Text;
         ZQuery1.ParamByName('semester').AsString := edt7.Text;
          ZQuery1.ParamByName('status').AsString := edt8.Text;
           ZQuery1.ParamByName('tingkat_kelas').AsString := edt9.Text;
    ZQuery1.ParamByName('id').AsString := id;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_semester');
    ZQuery1.Open;
    posisiAwal;
  end;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString; // DBGrid
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
edt5.Text:= ZQuery1.Fields[5].AsString;
edt6.Text:= ZQuery1.Fields[6].AsString;
edt7.Text:= ZQuery1.Fields[7].AsString;
edt8.Text:= ZQuery1.Fields[8].AsString;
edt9.Text:= ZQuery1.Fields[9].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;

end;

procedure TForm8.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
