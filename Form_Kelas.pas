unit Form_Kelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    ZQuery1: TZQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn6: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
  private
id : string;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm5.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;

end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('NAMA KUSTOMER TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('JURUSAN TELEPON TIDAK BOLEH KOSONG!');
  end
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO tb_kelas (nama, jurusan) VALUES (:nama, :jurusan)');
    ZQuery1.ParamByName('nama').AsString := edt1.Text;
    ZQuery1.ParamByName('jurusan').AsString := edt2.Text;

    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_kelas');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiAwal;
  end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('nama').AsString) and (edt2.Text = ZQuery1.FieldByName('jurusan').AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!');
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_kelas SET nama = :nama, jurusan = :jurusan WHERE id = :id');
    ZQuery1.ParamByName('nama').AsString := edt1.Text;
    ZQuery1.ParamByName('jurusan').AsString := edt2.Text;
    ZQuery1.ParamByName('id').AsString := id;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_kelas');
    ZQuery1.Open;
    posisiAwal;
  end;
end;
procedure TForm5.btn4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tb_kelas WHERE id = :id');
  ZQuery1.ParamByName('id').AsString := id;
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tb_kelas');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  posisiAwal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;

edt1.Enabled:= True;
edt2.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
