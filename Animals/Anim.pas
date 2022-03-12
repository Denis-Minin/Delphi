unit Anim;

interface

type
  TAnimal = class
  public
    constructor Create;
    function GetKind: string;
    function Voice: string; virtual; abstract;
  private
    Kind: string;
  end;

  TDog = class (TAnimal)
  public
    constructor Create;
    function Voice: string; override;
    function Eat: string; virtual;
  end;

  TCat = class (TAnimal)
  public
    constructor Create;
    function Voice: string; override;
    function Eat: string; virtual;
  end;

  TElephant = class (TAnimal)
  public
    constructor Create;
    function Voice: String; override;
    function Eat: string; virtual;
  end;

implementation

uses
  MMSystem;

constructor TAnimal.Create;
begin
  Kind := 'An animal';
end;

function TAnimal.GetKind: string;
begin
  GetKind := Kind;
end;

{function TAnimal.Voice: string;        у абстрактного класса не может быть реализации!
begin
  Voice := 'Voice of the animal';
    PlaySound ('Anim.wav', 0, snd_Async);
    end;}

constructor TDog.Create;
begin
  Kind := 'A dog';
end;

function TDog.Eat: string;
begin
  Eat := 'A bone, please!';
end;

function TDog.Voice: string;
begin
  Voice := 'Arf Arf';
  PlaySound ('dog.wav', 0, snd_Async);
end;

{ TCat }

constructor TCat.Create;
begin
  Kind := 'A Cat'
end;

function TCat.Eat: string;
begin
  Eat := 'A mouse, please!';
end;

function TCat.Voice: string;
begin
  Voice := 'Meo Meo';
  PlaySound('CAT.wav', 0, snd_Async)
end;

{ TElephant }

constructor TElephant.Create;
begin
  Kind := 'An Elephant'
end;

function TElephant.Eat: string;
begin
  Eat := 'A grass or hay, please!';
end;

function TElephant.Voice: String;
begin
  Voice := 'Tuy Tuy';
  PlaySound('ELEPHANT.wav', 0, snd_Async)
end;

end.

