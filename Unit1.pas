unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

const //                                           1-   2-    3-   4-   5-   6-   7b- 7
  FreqOfMusicScal: array [1..25] of Cardinal = (0, {130, 146, 164, 174, 196, 220, 233, 246,}
  //1  2    3    4    5    6     7b    7
  262, 294, 330, 349, 392,  440, 466, 494,

  523, 587, 659, 698, 783, 880, 932, 988);
  Scor: array[1..52] of Integer = (3, 3, 3, 0, 1, 3, 5, 0, 0, 5 - 9, 0,                      {} 1, 0, 5 - 9, 0, 3-9, 0, 6-9, 7 - 9, 0, 8-9, 6-9,          {} 5-9,  3,  5,   6, 4,   5, 0, 3 , 1, 2, 7-9, 0,{} 1, 0, 5-9, 0, 3-9, 0, 6-9, 7-9,0, 8-9, 6-9,{}5-9, 3, 5, 6, 4, 5,0, 3, 2, 1, 7-9,{}0, 5, 5, 4, 3,0, 3, 5 - 9, 6 -9, 1,0, 6 - 9, 1, 2);
                          //1 = 1/4
  Beat: array[1..24] of Double = (0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 0.25, 0.25,0.5, 0.5, 0.5,{}0.5, 0.25, 0.25,0.5, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.5,{}0.5, 0.5,0.5, 0.5,0.25,0.5, 0.5,0.25,0.25,0.75);

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := Low(Beat) to High(Beat) do
  begin
    Windows.Beep(FreqOfMusicScal[Scor[I] + 18], Round(Beat[I] * 500))
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Windows.Beep(1000, 200);
  Windows.Beep(0, 200);
  Windows.Beep(500, 200);

end;

end.
