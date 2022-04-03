unit DateF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dates, Vcl.StdCtrls;

type
  TDateForm = class(TForm)
    LabelDate: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnIncrease: TButton;
    BtnDecrease: TButton;
    BtnAdd10: TButton;
    BtnSubtract10: TButton;
    BtnLeap: TButton;
    BtnToday: TButton;
    EditYear: TEdit;
    EditMonth: TEdit;
    EditDay: TEdit;
    BtnRead: TButton;
    BtnWrite: TButton;
    procedure BtnIncreaseClick(Sender: TObject);
    procedure BtnDecreaseClick(Sender: TObject);
    procedure BtnAdd10Click(Sender: TObject);
    procedure BtnSubtract10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnLeapClick(Sender: TObject);
    procedure BtnTodayClick(Sender: TObject);
    procedure BtnReadClick(Sender: TObject);
    procedure BtnWriteClick(Sender: TObject);
  private
    TheDay : TNewDate;
    { Private declarations }
  public
    procedure DateChange(Sender: TObject);
    { Public declarations }
  end;


var
  DateForm: TDateForm;

implementation

{$R *.dfm}

{ TDateForm }

procedure TDateForm.BtnAdd10Click(Sender: TObject);
begin
  TheDay.Increase(10);
end;

procedure TDateForm.BtnDecreaseClick(Sender: TObject);
begin
  TheDay.Decrease;
end;

procedure TDateForm.BtnIncreaseClick(Sender: TObject);
begin
  TheDay.Increase;
end;

procedure TDateForm.BtnLeapClick(Sender: TObject);
begin
    if TheDay.LeapYear then
    ShowMessage ('Leap year')
  else
    ShowMessage ('NON Leap year');
end;

procedure TDateForm.BtnReadClick(Sender: TObject);
begin
  EditYear.Text := IntToStr(TheDay.Year);
  EditMonth.Text := IntToStr(TheDay.month);
  EditDay.Text := inttostr(TheDay.Day);
end;

procedure TDateForm.BtnSubtract10Click(Sender: TObject);
begin
  TheDay.Decrease(10);
end;

procedure TDateForm.BtnTodayClick(Sender: TObject);
begin
  TheDay.SetValue(Date);
end;

procedure TDateForm.BtnWriteClick(Sender: TObject);
begin
  TheDay.SetValue(StrToInt(EditYear.Text), StrToInt(EditMonth.Text),
    StrToInt(EditDay.Text));
end;

procedure TDateForm.DateChange(Sender: TObject);
begin
  LabelDate.Caption := TheDay.Text;
end;

procedure TDateForm.FormCreate(Sender: TObject);
begin
  TheDay := TNewDate.Create(2012, 12, 12);
  LabelDate.Caption := TheDay.text;
  TheDay.OnChange := DateChange;
end;

end.
