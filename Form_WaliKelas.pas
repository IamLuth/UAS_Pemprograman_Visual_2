unit Form_WaliKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, frxClass, frxDBSet;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    btn6: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
   id: string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
end;

procedure TForm3.posisiawal;
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
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn1Click(Sender: TObject);
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

end;

procedure TForm3.btn2Click(Sender: TObject);
begin
 if edt1.Text = '' then
  begin
    ShowMessage('NIK TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('NAMA TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
  end
  else
  begin
   ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('INSERT INTO tb_walikelas (nik, nama, jk, pendidikan, telp, mapel, alamat, status) ' +
  'VALUES (:nik, :nama, :jk, :pendidikan, :telp, :mapel, :alamat, :status)');
ZQuery1.ParamByName('nik').AsString := edt1.Text;
ZQuery1.ParamByName('nama').AsString := edt2.Text;
ZQuery1.ParamByName('jk').AsString := edt3.Text;
ZQuery1.ParamByName('pendidikan').AsString := edt4.Text;
ZQuery1.ParamByName('telp').AsString := edt5.Text;
ZQuery1.ParamByName('mapel').AsString := edt6.Text;
ZQuery1.ParamByName('alamat').AsString := edt7.Text;
ZQuery1.ParamByName('status').AsString := edt8.Text;

try
  ZQuery1.ExecSQL;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiAwal;
except
  on E: Exception do
    ShowMessage('Gagal menyimpan data: ' + E.Message);
end;

ZQuery1.Close; // Menutup kueri sebelum membuka yang baru
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT * FROM tb_walikelas');
ZQuery1.Open;
posisiAwal;

  end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '')  or (edt6.Text = '')  or (edt7.Text = '')  or (edt8.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('nik').AsString) and (edt2.Text = ZQuery1.FieldByName('nama').AsString) and (edt3.Text = ZQuery1.FieldByName('jk').AsString) and (edt4.Text = ZQuery1.FieldByName('pendidikan').AsString) and (edt5.Text = ZQuery1.FieldByName('telp').AsString) and (edt6.Text = ZQuery1.FieldByName('mapel').AsString) and (edt7.Text = ZQuery1.FieldByName('alamat').AsString) and (edt8.Text = ZQuery1.FieldByName('status').AsString)then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!'); // UPDATE
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_walikelas SET nik = :nik, nama = :nama, jk = :jk, pendidikan = :pendidikan, telp = :telp, mapel = :mapel, alamat = :alamat, status = :status WHERE id = :id');
    ZQuery1.ParamByName('nik').AsString := edt1.Text;
    ZQuery1.ParamByName('nama').AsString := edt2.Text;
    ZQuery1.ParamByName('jk').AsString := edt3.Text;
    ZQuery1.ParamByName('pendidikan').AsString := edt4.Text;
    ZQuery1.ParamByName('telp').AsString := edt5.Text;
    ZQuery1.ParamByName('mapel').AsString := edt6.Text;
    ZQuery1.ParamByName('alamat').AsString := edt7.Text;
    ZQuery1.ParamByName('status').AsString := edt8.Text;
    ZQuery1.ParamByName('id').AsString := id;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_walikelas');
    ZQuery1.Open;
    posisiAwal;
  end;
end;
procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tb_walikelas where id="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tb_walikelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;
procedure TForm3.dbgrd1CellClick(Column: TColumn);
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
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
