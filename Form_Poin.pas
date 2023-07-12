unit Form_Poin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    con1: TZConnection;
    ZQuery1: TZQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
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
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
  Id : string;
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm7.btn1Click(Sender: TObject);
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

procedure TForm7.posisiawal;
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

procedure TForm7.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('ID ORTU TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('STATUS HUBUNGAN ANAK TIDAK BOLEH KOSONG!');
  end
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO tb_hubungan (siswa_id, ortu_id, status_hub_anak, keterangan, status_ortu) VALUES (:siswa_id, :ortu_id, :status_hub_anak, :keterangan, :status_ortu)');
    ZQuery1.ParamByName('siswa_id').AsString := edt1.Text;
    ZQuery1.ParamByName('ortu_id').AsString := edt2.Text;
    ZQuery1.ParamByName('status_hub_anak').AsString := edt3.Text;
    ZQuery1.ParamByName('keterangan').AsString := edt4.Text;
    ZQuery1.ParamByName('status_ortu').AsString := edt5.Text;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_hubungan');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiAwal;
  end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('siswa_id').AsString) and (edt2.Text = ZQuery1.FieldByName('ortu_id').AsString)  and (edt3.Text = ZQuery1.FieldByName('status_hub_anak').AsString)  and (edt4.Text = ZQuery1.FieldByName('keterangan').AsString)  and (edt5.Text = ZQuery1.FieldByName('status_ortu').AsString)then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!'); // UPDATE
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_hubungan SET siswa_id = :siswa_id, ortu_id = :ortu_id, status_hub_anak = :status_hub_anak, keterangan = :keterangan, status_ortu = :status_ortu WHERE id = :id');
    ZQuery1.ParamByName('siswa_id').AsString := edt1.Text;
    ZQuery1.ParamByName('ortu_id').AsString := edt2.Text;
     ZQuery1.ParamByName('status_hub_anak').AsString := edt3.Text;
      ZQuery1.ParamByName('keterangan').AsString := edt4.Text;
       ZQuery1.ParamByName('status_ortu').AsString := edt5.Text;
    ZQuery1.ParamByName('id').AsString := id;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_hubungan');
    ZQuery1.Open;
    posisiAwal;
  end;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tb_hubungan WHERE id = :id');
  ZQuery1.ParamByName('id').AsString := id;
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tb_hubungan');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  posisiAwal;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
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

procedure TForm7.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
