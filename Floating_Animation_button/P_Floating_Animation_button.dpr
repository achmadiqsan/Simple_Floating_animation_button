program P_Floating_Animation_button;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Floating_Animation_button in 'U_Floating_Animation_button.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
