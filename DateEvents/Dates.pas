unit Dates;

interface

uses
  Classes, SysUtils;

type
  TDate = class (TObject)
  private
    fDate: TdateTime;
    FOnChange: TNotifyEvent;
    function GetYear: integer;
    function GetMonth: Integer;
    function GetDay: Integer;
    procedure SetDay(const Value : integer);
    procedure SetMonth(const Value : integer);
    procedure SetYear(const Value : integer);
  protected
    procedure DoChange; dynamic;
  public
    constructor Create; overload;
    constructor Create(y, m, d : integer); overload;
    procedure SetValue(y, m, d : integer); overload;
    procedure SetValue(NewDate: TDateTime); overload;
    function LeapYear: Boolean;
    procedure Increase (NumberofDays: integer = 1);
    procedure Decrease (NumberOfDays: integer = 1);
    function GetText : string; virtual;
    property Day: integer read GetDay write SetDay;
    property month: integer read GetMonth write SetMonth;
    property Year: integer read GetYear write SetYear;
    property Text: string read GetText;
    property OnChange: TNotifyEvent read FonChange write FonChange;
  end;

  TNewDate = class (TDate)
  public
    function GetText: string; override;
  end;

  EDateOutOfRange = class (Exception)
  end;

implementation

{ TDate }

constructor TDate.Create;
begin
  FDate := Date;
end;

constructor TDate.Create(y, m, d: integer);
begin
  FDate := EncodeDate(y, m, d);
end;

procedure TDate.Decrease(NumberOfDays: integer);
begin
  FDate := FDate - NumberOfDays;
  DoChange;
end;

procedure TDate.DoChange;
begin
  if Assigned (FOnChange) then
    FOnChange(Self);
end;

function TDate.GetDay: Integer;
var
  y, m, d : word;
begin
  DecodeDate (FDate, y, m, d);
  Result := d;
end;

function TDate.GetMonth: Integer;
var
  y, m, d : word;
begin
  DecodeDate(FDate, y, m, d);
  Result := m;
end;

function TDate.GetText: string;
begin
  GetText := DateToStr(FDate);
end;

function TDate.GetYear: integer;
var
  y, m, d: word;
begin
  DecodeDate(FDate, y, m, d);
  Result := y;
end;

procedure TDate.Increase(NumberofDays: integer);
begin
    FDate := FDate + NumberofDays;
    DoChange;
end;

function TDate.LeapYear: Boolean;
begin
    if (GetYear mod 4 <> 0) then
    LeapYear := False
  else if (GetYear mod 100 <> 0) then
    LeapYear := True
  else if (GetYear mod 400 <> 0) then
    LeapYear := False
  else
    LeapYear := True;
end;

procedure TDate.SetDay(const Value: integer);
begin
  if (Value < 0) or (Value > 31) then
    raise EDateOutOfRange.Create('Invalid day');
  SetValue (Year, Month, Value)
end;

procedure TDate.SetMonth(const Value: integer);
begin
  if (Value < 0) or (Value > 12) then
    raise EDateOutOfRange.Create('InvalidDay');
  SetValue (Year, Value, Day);
end;

procedure TDate.SetValue(NewDate: TDateTime);
begin
  FDate := NewDate;
  DoChange;
end;

procedure TDate.SetValue(y, m, d: integer);
begin
  FDate := EncodeDate (y, m, d);
  DoChange;
end;

procedure TDate.SetYear(const Value: integer);
begin
  SetValue (Value, Month, Day);
end;

{ TNewDate }

function TNewDate.GetText: string;
begin
  GetText := FormatDateTime('mmmm, dd yyyy', FDate);
end;

end.
