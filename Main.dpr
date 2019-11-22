program Main;

uses
  Vcl.Forms,
  JuBing in 'JuBing.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm11, Form11);
  Application.ShowMainForm := false;    //Òþ²Ø´°Ìå
  Application.Run;

end.

