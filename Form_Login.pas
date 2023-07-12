unit Form_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm10 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    con1: TZConnection;
    ZQuery1: TZQuery;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Form_Siswa, Form_Utama;

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
with zquery1 do begin
SQL.Clear;
SQL.Add('select * from tb_login where username='+QuotedStr(edt1.Text));
open;
end;

if ZQuery1.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if ZQuery1.FieldByName('password').AsString<>Edt2.Text
then
Application.MessageBox('mastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
form1.Show;
end;
end;
end;


end.
