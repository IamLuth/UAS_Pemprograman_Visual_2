unit Form_User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm9 = class(TForm)
    con1: TZConnection;
    ZQuery1: TZQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    id : integer;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm9.posisiawal;
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

end;

procedure TForm9.btn1Click(Sender: TObject);
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
end;

procedure TForm9.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsInteger; // DBGrid
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;

edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('USERNAME TIDAK BOLEH KOSONG!');
  end
  else if edt2.Text = '' then
  begin
    ShowMessage('PASSWORD TIDAK BOLEH KOSONG!');
  end
  else if edt3.Text = '' then
  begin
    ShowMessage('LEVEL TIDAK BOLEH KOSONG!');
  end
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO tb_user (username, password, level, status) VALUES (:username, :password, :level, :status)');
    ZQuery1.ParamByName('username').AsString := edt1.Text;
    ZQuery1.ParamByName('password').AsString := edt2.Text;
    ZQuery1.ParamByName('level').AsString := edt3.Text;
    ZQuery1.ParamByName('status').AsString := edt4.Text;

    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_user');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!');
    posisiAwal;
  end;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '')  then
  begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end
  else if (edt1.Text = ZQuery1.FieldByName('username').AsString) and (edt2.Text = ZQuery1.FieldByName('password').AsString) and (edt3.Text = ZQuery1.FieldByName('level').AsString) and (edt4.Text = ZQuery1.FieldByName('status').AsString)then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiAwal;
  end
  else
  begin
    ShowMessage('DATA BERHASIL DIUPDATE!'); // UPDATE
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE tb_user SET username = :username, password = :password, level = :level, status = :status WHERE id = :id');
    ZQuery1.ParamByName('username').AsString := edt1.Text;
    ZQuery1.ParamByName('password').AsString := edt2.Text;
    ZQuery1.ParamByName('level').AsString := edt3.Text;
    ZQuery1.ParamByName('status').AsString := edt4.Text;
    ZQuery1.ParamByName('id').AsInteger := id;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM tb_user');
    ZQuery1.Open;
    posisiAwal;
  end;
end;






procedure TForm9.btn4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM tb_user WHERE id= :id');
  ZQuery1.ParamByName('id').AsInteger := id;
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM tb_user');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
  posisiAwal;
end;


procedure TForm9.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm9.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
