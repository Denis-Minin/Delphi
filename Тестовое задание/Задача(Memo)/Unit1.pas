unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
s: string;
i : integer;
begin
  for I := 1 to 100 do
    begin
      s := '';
      if i mod 2 = 0 then s := s + 'P';
      if i mod 3 = 0 then s := s + 'S';
      if i mod 5 = 0 then s := s + 'W';
      Memo1.Lines.Add(inttostr(i)+ s);
    end;
end;

end.
