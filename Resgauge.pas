unit Resgauge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Gauges, ComObj;

type

  TResourseGauge = class
  private
    FPercentCritical : integer;
    procedure SetPercentCritical (Value : integer);
  protected
    function GetPercentFree : integer; virtual; abstract;
  public
    Constructor Create;
    procedure CheckStatus;
    property PercentFree : integer read GetPercentFree;
    property PercentCritical : integer read FPercentCritical write SetPercentCritical;
  end;

  TDiskGauge = class (TResourseGauge)
  private
    DriveLetter : Char;
  protected
    function GetPercentFree: integer; override;
  public
    constructor Create(ADriveLetter : Char);
  end;

  TMemoryGauge = class (TResourseGauge)
  protected
    function GetPercentFree : integer; override;
  end;

  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TResourseGauge }

procedure TResourseGauge.CheckStatus;
begin
    if GetPercentFree <= FPercentCritical then Beep;
end;

constructor TResourseGauge.Create;
begin
    FPercentCritical := 10;
end;

procedure TResourseGauge.SetPercentCritical(Value: integer);
begin
    if (Value >= 0) and (Value < 100) then FPercentCritical := Value;
end;

{ TDiskGauge }

constructor TDiskGauge.Create(ADriveLetter: Char);
begin
    inherited Create;
    DriveLetter := ADriveLetter;
end;

function TDiskGauge.GetPercentFree: integer;
var
  Drive : Byte;
begin
    Drive := Ord(DriveLetter) - Ord('A') + 1;
    Result := DiskFree(Drive) * 100 div DiskSize(Drive);
end;

{ TMemoryGauge }

function TMemoryGauge.GetPercentFree: integer;   {uses Windows;}
var
  MemoryStatus : TMemoryStatus;
begin
    MemoryStatus.dwLength := SizeOf(MemoryStatus);
    GlobalMemoryStatus(MemoryStatus);
    Result := 100 - MemoryStatus.dwMemoryLoad;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  DiskGauge : TDiskGauge;
begin
    if Edit1.Text <> '' then
    begin
    DiskGauge := TDiskGauge.Create(Edit1.Text[1]);
    DiskGauge.GetPercentFree;
    Memo1.Lines.Add(DiskGauge.GetPercentFree.ToString + '% ресурсов жесткого диска раздела ' + DiskGauge.DriveLetter);
    DiskGauge.Free;
    end
    else ShowMessage('Введите букву раздела и повторите попытку!');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  MemoryGauge : TMemoryGauge;
begin
    MemoryGauge := TMemoryGauge.Create;
    Memo1.Lines.Add(inttostr(MemoryGauge.GetPercentFree) + '% ресурсов ОЗУ');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Memo1.Clear;
end;



end.
