program DateCopy;

uses
  Forms,
  DateF in 'D:\Загрузки\Delphi 7 для профессионалов (sample source)\02\DateCopy\DateF.pas' {DateForm},
  Dates in 'D:\Загрузки\Delphi 7 для профессионалов (sample source)\02\DateCopy\Dates.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDateForm, DateForm);
  Application.Run;
end.

