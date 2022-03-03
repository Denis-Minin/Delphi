unit Anim;

interface

type
  TAnimal = class
  public
    constructor Create;
    function GetKind: string;
  private
    Kind: string;
  end;

  TDog = class (TAnimal)
  public
    constructor Create;
  end;

  TCat = class (TAnimal)
  public
    constructor Create;
  end;

  TElephant = class (TAnimal)
  public
    constructor Create;
  end;

implementation

constructor TAnimal.Create;
begin
  Kind := 'An animal';
end;

function TAnimal.GetKind: string;
begin
  GetKind := Kind;
end;

constructor TDog.Create;
begin
  Kind := 'A dog';
end;

{ TCat }

constructor TCat.Create;
begin
  Kind := 'A Cat'
end;

{ TElephant }

constructor TElephant.Create;
begin
  Kind := 'An Elephant'
end;

end.

