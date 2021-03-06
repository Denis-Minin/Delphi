unit AnimF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Anim;

type
  TFormAnimals = class(TForm)
    LabelVoice: TLabel;
    BtnVoice: TButton;
    RbtnAnimal: TRadioButton;
    RbtnDog: TRadioButton;
    RbtnCat: TRadioButton;
    RbtnElephant: TRadioButton;
    LabelGetKind: TLabel;
    LabelEat: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnVoiceClick(Sender: TObject);
    procedure RbtnAnimalClick(Sender: TObject);
    procedure RbtnDogClick(Sender: TObject);
    procedure RbtnCatClick(Sender: TObject);
    procedure RbtnElephantClick(Sender: TObject);
  private
    MyAnimal: TAnimal;
    AnimalEat: String;
  end;

var
  FormAnimals: TFormAnimals;

implementation

{$R *.DFM}

procedure TFormAnimals.FormCreate(Sender: TObject);
begin
  AnimalEat := '';
  MyAnimal := TCat.Create;
  RbtnCatClick(MyAnimal);
end;

procedure TFormAnimals.FormDestroy(Sender: TObject);
begin
  MyAnimal.Free;
end;

procedure TFormAnimals.BtnVoiceClick(Sender: TObject);
begin
  LabelVoice.Caption := MyAnimal.Voice;
  LabelGetKind.Caption := MyAnimal.GetKind;
  LabelEat.Caption := AnimalEat;
end;

procedure TFormAnimals.RbtnAnimalClick(Sender: TObject);
begin
  MyAnimal.Free;
  MyAnimal := TAnimal.Create;
  //ShowMessage('Abstract Error!');
end;

procedure TFormAnimals.RbtnCatClick(Sender: TObject);
begin
  MyAnimal.Free;
  MyAnimal := TCat.Create;
  AnimalEat := (MyAnimal as TCat).Eat;
end;

procedure TFormAnimals.RbtnDogClick(Sender: TObject);
begin
  MyAnimal.Free;
  MyAnimal := TDog.Create;
  AnimalEat := (MyAnimal as TDog).Eat;
end;

procedure TFormAnimals.RbtnElephantClick(Sender: TObject);
begin
  MyAnimal.Free;
  MyAnimal := TElephant.Create;
  AnimalEat := (MyAnimal as TElephant).Eat;
end;

end.

