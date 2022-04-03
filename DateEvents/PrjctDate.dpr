program PrjctDate;

uses
  Vcl.Forms,
  DateF in 'DateF.pas' {DateForm},
  Dates in 'Dates.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDateForm, DateForm);
  Application.Run;
end.
