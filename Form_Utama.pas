unit Form_Utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    MENU1: TMenuItem;
    FormSiswa1: TMenuItem;
    FormWaliKelas1: TMenuItem;
    FormOrtu1: TMenuItem;
    FormKelas1: TMenuItem;
    FormPoint1: TMenuItem;
    FormHubungan1: TMenuItem;
    FormSemester1: TMenuItem;
    FormUser1: TMenuItem;
    KELUAR1: TMenuItem;
    lbl1: TLabel;
    procedure FormSiswa1Click(Sender: TObject);
    procedure FormWaliKelas1Click(Sender: TObject);
    procedure FormOrtu1Click(Sender: TObject);
    procedure FormKelas1Click(Sender: TObject);
    procedure FormPoint1Click(Sender: TObject);
    procedure FormHubungan1Click(Sender: TObject);
    procedure FormSemester1Click(Sender: TObject);
    procedure FormUser1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Form_Siswa, Form_WaliKelas, Form_Ortu, Form_Kelas, Form_Poin, Form_Hubungan,
  Form_Semester, Form_User;

{$R *.dfm}

procedure TForm1.FormSiswa1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.FormWaliKelas1Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.FormOrtu1Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.FormKelas1Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm1.FormPoint1Click(Sender: TObject);
begin
form6.ShowModal;
end;

procedure TForm1.FormHubungan1Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm1.FormSemester1Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm1.FormUser1Click(Sender: TObject);
begin
form9.ShowModal;
end;

procedure TForm1.KELUAR1Click(Sender: TObject);
begin
Application.Terminate() 
end;

end.
