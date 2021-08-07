program Recognizer;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {RecognizerForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRecognizerForm, RecognizerForm);
  Application.Run;
end.
