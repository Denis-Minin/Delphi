unit Anim;

interface

type
  TAnimal = class
  public
    constructor Create;
    function GetKind: string;
    function Voice: string; virtual;
  private
    Kind: string;
  end;

  TDog = class (TAnimal)
  public
    constructor Create;
    function Voice: string; override;
  end;

  TCat = class (TAnimal)
  public
    constructor Create;
    function Voice: string; override;
  end;

  TElephant = class (TAnimal)
  public
    constructor Create;
    function Voice: String; override;
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

function TAnimal.Voice: string;
begin
  Voice := 'Voice of the animal';
  PlaySound ('Anim.wav', 0, snd_Async);
end;

constructor TDog.Create;
begin
  Kind := 'A dog';
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

function TElephant.Voice: String;
begin
  Voice := 'Tuy Tuy';
  PlaySound('ELEPHANT.wav', 0, snd_Async)
end;

end.

