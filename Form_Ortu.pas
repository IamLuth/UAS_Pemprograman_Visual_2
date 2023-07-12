unit Form_Ortu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, frxClass, frxDBSet;

type
  TForm4 = class(TForm)
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
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    edt8: TEdit;
    edt9: TEdit;
    lbl9: TLabel;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn6: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
 id : string;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.bersih;
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

procedure TForm4.posisiawal;
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
edt9.Enabled:= False;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btn1Click(Sender: TObject);
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

procedure TForm4.btn5Click(Sender: TObject);
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

procedure TForm4.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('NIK KUSTOMER TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('NAMA TELEPON TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
  end
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO tb_ortu (nik, nama, pendidikan, pekerjaan, telp, alamat, jk, agama, is_active) VALUES (:nik, :nama, :pendidikan, :pekerjaan, :telp, :alamat, :jk, :agama, :is_active)');
    ZQuery1.ParamByName('nik').AsString := edt1.Text;
    ZQuery1.ParamByName('nama').AsString := edt2.Text;
    ZQuery1.ParamByName('pendidikan').AsString := edt3.Text;
    ZQuery1.ParamByName('pekerjaan').AsString := edt4.Text;
    ZQuery1.ParamByName('telp').AsString := edt5.Text;
    ZQuery1.ParamByName('alamat').AsString := edt6.Text;
    ZQuery1.ParamByName('jk').AsString := edt7.Text;
    ZQuery1.ParamByName('agama').AsString := edt8.Text;
    ZQuery1.ParamByName('is_active').AsString := edt9.Text;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_ortu');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiAwal;
  end;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  id:= ZQuery1.Fields[0].AsString;
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


procedure TForm4.btn4Click(Sender: TObject);
begin
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tb_ortu WHERE id = :id');
  ZQuery1.ParamByName('id').AsString := id;
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tb_ortu');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  posisiAwal;
end;

end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') or (edt9.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('nik').AsString) and (edt2.Text = ZQuery1.FieldByName('nama').AsString) and (edt3.Text = ZQuery1.FieldByName('pendidikan').AsString)and (edt4.Text = ZQuery1.FieldByName('pekerjaan').AsString)and (edt5.Text = ZQuery1.FieldByName('telp').AsString)and (edt6.Text = ZQuery1.FieldByName('alamat').AsString)and (edt7.Text = ZQuery1.FieldByName('jk').AsString)and (edt8.Text = ZQuery1.FieldByName('agama').AsString)and (edt9.Text = ZQuery1.FieldByName('is_active').AsString)then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!');
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_ortu SET nik = :nik, nama = :nama, pendidikan = :pendidikan, pekerjaan = :pekerjaan, telp = :telp, alamat = :alamat, jk = :jk, agama = :agama, is_active = :is_active WHERE id = :id');
    ZQuery1.ParamByName('nik').AsString := edt1.Text;
    ZQuery1.ParamByName('nama').AsString := edt2.Text;
     ZQuery1.ParamByName('pendidikan').AsString := edt3.Text;
      ZQuery1.ParamByName('pekerjaan').AsString := edt4.Text;
       ZQuery1.ParamByName('telp').AsString := edt5.Text;
        ZQuery1.ParamByName('alamat').AsString := edt6.Text;
         ZQuery1.ParamByName('jk').AsString := edt7.Text;
          ZQuery1.ParamByName('agama').AsString := edt8.Text;
           ZQuery1.ParamByName('is_active').AsString := edt9.Text;
    ZQuery1.ParamByName('id').AsString := id;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_ortu');
    ZQuery1.Open;
    posisiAwal;
  end;
end;
procedure TForm4.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
