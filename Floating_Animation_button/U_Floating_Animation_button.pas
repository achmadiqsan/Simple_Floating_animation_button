unit U_Floating_Animation_button;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Layouts;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Circle1: TCircle;
    Layout2: TLayout;
    Circle2: TCircle;
    Layout3: TLayout;
    Circle3: TCircle;
    Layout4: TLayout;
    Circle4: TCircle;
    FloatAnimation1: TFloatAnimation;
    Image1: TImage;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    FloatAnimation5: TFloatAnimation;
    FloatAnimation6: TFloatAnimation;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Circle1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
  private
    { Private declarations }
    var
      menu : Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Circle1Click(Sender: TObject);
begin
  { contoh coding :
  FloatAnimation1.Inverse := False;
  FloatAnimation1.StartValue := Circle1.Position.Y;
  FloatAnimation1.StopValue := Circle1.Position.Y - 120;
  FloatAnimation1.Start;
  }
  if menu then
  begin
    FloatAnimation1.OnFinish := nil;

    FloatAnimation6.Inverse := True;
    FloatAnimation6.Start;
    //
    FloatAnimation5.Inverse := True;
    FloatAnimation5.Start;
    //
    FloatAnimation4.Inverse := True;
    FloatAnimation4.Start;
    //
    FloatAnimation3.Inverse := True;
    FloatAnimation3.Start;
    //
    FloatAnimation2.Inverse := True;
    FloatAnimation2.Start;

    menu := False;
  end
  else
  begin
    menu := True;
    FloatAnimation1.OnFinish := FloatAnimation1Finish;

    Layout2.Visible := True;
    FloatAnimation1.Inverse := False;
    FloatAnimation1.StartValue := Layout1.Position.Y;
    FloatAnimation1.StopValue := Layout1.Position.Y - 120;
    FloatAnimation1.Start;

    FloatAnimation6.Inverse := False;
    FloatAnimation6.StartValue := 0;
    FloatAnimation6.StopValue := 225;
    FloatAnimation6.Start;
  end;
end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
  Layout3.Visible := True;

  FloatAnimation2.Inverse := False;
  FloatAnimation2.StartValue := Layout2.Position.X;
  FloatAnimation2.StopValue := Layout2.Position.X - 120;
  FloatAnimation2.Start;

  FloatAnimation3.Inverse := False;
  FloatAnimation3.StartValue := Layout2.Position.Y;
  FloatAnimation3.StopValue := Layout2.Position.Y + 20;
  FloatAnimation3.Start;
  //
  Layout4.Visible := True;

  FloatAnimation4.Inverse := False;
  FloatAnimation4.StartValue := Layout2.Position.X;
  FloatAnimation4.StopValue := Layout2.Position.X - 150;
  FloatAnimation4.Start;

  FloatAnimation5.Inverse := False;
  FloatAnimation5.StartValue := Layout2.Position.Y;
  FloatAnimation5.StopValue := Layout2.Position.Y + 130;
  FloatAnimation5.Start;
end;

procedure TForm1.FloatAnimation5Finish(Sender: TObject);
begin
  if not menu then
  begin
    Layout3.Visible := False;
    Layout4.Visible := False;

    FloatAnimation1.Inverse := True;
    FloatAnimation1.Start;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  menu := False;
  Layout2.Visible := False;
  Layout3.Visible := False;
  Layout4.Visible := False;
end;

end.
