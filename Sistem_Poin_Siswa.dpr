program Sistem_Poin_Siswa;

uses
  Forms,
  Form_Utama in 'Form_Utama.pas' {Form1},
  Form_Siswa in 'Form_Siswa.pas' {Form2},
  Form_WaliKelas in 'Form_WaliKelas.pas' {Form3},
  Form_Ortu in 'Form_Ortu.pas' {Form4},
  Form_Kelas in 'Form_Kelas.pas' {Form5},
  Form_Hubungan in 'Form_Hubungan.pas' {Form6},
  Form_Poin in 'Form_Poin.pas' {Form7},
  Form_Semester in 'Form_Semester.pas' {Form8},
  Form_User in 'Form_User.pas' {Form9},
  Form_Login in 'Form_Login.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
