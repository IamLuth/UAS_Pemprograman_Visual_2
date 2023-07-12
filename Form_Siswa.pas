unit Form_Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TForm2 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    ZQuery1: TZQuery;
    con1: TZConnection;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    id: String;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.bersih;
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
edt10.Clear;
edt11.Clear;

end;

procedure TForm2.btn1Click(Sender: TObject);
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
edt10.Enabled:= True;
edt11.Enabled:= True;

end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('NIS TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('NISN TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('NAMA TIDAK BOLEH KOSONG!');
  end
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO tb_siswa (nis, nisn, nama_siswa, nik, tempat_lahir, tanggal_lahir, jenis_kelamin, alamat, telp, hp, status) ' +
      'VALUES (:nis, :nisn, :nama_siswa, :nik, :tempat_lahir, :tanggal_lahir, :jenis_kelamin, :alamat, :telp, :hp, :status)');
    ZQuery1.ParamByName('nis').AsString := edt1.Text;
    ZQuery1.ParamByName('nisn').AsString := edt2.Text;
    ZQuery1.ParamByName('nama_siswa').AsString := edt3.Text;
    ZQuery1.ParamByName('nik').AsString := edt4.Text;
    ZQuery1.ParamByName('tempat_lahir').AsString := edt5.Text;
    ZQuery1.ParamByName('tanggal_lahir').AsString := edt6.Text;
    ZQuery1.ParamByName('jenis_kelamin').AsString := edt7.Text;
    ZQuery1.ParamByName('alamat').AsString := edt8.Text;
    ZQuery1.ParamByName('telp').AsString := edt9.Text;
    ZQuery1.ParamByName('hp').AsString := edt10.Text;
    ZQuery1.ParamByName('status').AsString := edt11.Text;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_siswa');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiAwal;
  end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);

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
edt10.Text:= ZQuery1.Fields[10].AsString;
edt11.Text:= ZQuery1.Fields[11].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
edt10.Enabled:= True;
edt11.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm2.posisiawal;
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
edt10.Enabled:= False;
edt11.Enabled:= False;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') or (edt9.Text = '') or (edt10.Text = '') or (edt11.Text = '') then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('nis').AsString) and (edt2.Text = ZQuery1.FieldByName('nisn').AsString) and (edt3.Text = ZQuery1.FieldByName('nama_siswa').AsString)
  and (edt4.Text = ZQuery1.FieldByName('nik').AsString)and (edt5.Text = ZQuery1.FieldByName('tempat_lahir').AsString)
  and (edt6.Text = ZQuery1.FieldByName('tanggal_lahir').AsString) and (edt7.Text = ZQuery1.FieldByName('jenis_kelamin').AsString)
  and (edt8.Text = ZQuery1.FieldByName('alamat').AsString) and (edt9.Text = ZQuery1.FieldByName('telp').AsString)
  and (edt10.Text = ZQuery1.FieldByName('hp').AsString) and (edt11.Text = ZQuery1.FieldByName('status').AsString)then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!'); // UPDATE
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_siswa SET nis = :nis, nisn = :nisn, nama_siswa = :nama_siswa, nik  = :nik, tempat_lahir = :tempat_lahir, tanggal_lahir = :tanggal_lahir, jenis_kelamin = :jenis_kelamin, alamat = :alamat, telp = :telp, hp = :hp, status = :status WHERE id= :id');
    ZQuery1.ParamByName('nis').AsString := edt1.Text;
    ZQuery1.ParamByName('nisn').AsString := edt2.Text;
     ZQuery1.ParamByName('nama_siswa').AsString := edt3.Text;
      ZQuery1.ParamByName('nik').AsString := edt4.Text;
       ZQuery1.ParamByName('tempat_lahir').AsString := edt5.Text;
        ZQuery1.ParamByName('tanggal_lahir').AsString := edt6.Text;
         ZQuery1.ParamByName('jenis_kelamin').AsString := edt7.Text;
          ZQuery1.ParamByName('alamat').AsString := edt8.Text;
           ZQuery1.ParamByName('telp').AsString := edt9.Text;
            ZQuery1.ParamByName('hp').AsString := edt10.Text;
             ZQuery1.ParamByName('status').AsString := edt11.Text;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_siswa');
    ZQuery1.Open;
    posisiAwal;
  end;
end;
procedure TForm2.btn4Click(Sender: TObject);

begin
 begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tb_siswa WHERE id = :id');
  ZQuery1.ParamByName('id').AsString := id;
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tb_siswa');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  posisiAwal;
end;
end;


procedure TForm2.btn5Click(Sender: TObject);
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
edt10.Clear;
edt11.Clear;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
