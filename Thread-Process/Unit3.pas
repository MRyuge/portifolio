unit Unit3;

interface

uses
  Classes, ComCtrls;

type
  TestThread = class(TThread)
  private
    FProgressBar: TProgressBar;
    Percent : Integer;
    procedure UpdateProgress;
  protected
    procedure Execute; override;
  public
    constructor Create(CreateSuspended : Boolean; ProgressBar : TProgressBar); reintroduce;
  end;

implementation


{ TestThread }

constructor TestThread.Create(CreateSuspended: Boolean;
  ProgressBar: TProgressBar);
begin
  FProgressBar := ProgressBar;
  inherited Create(CreateSuspended);
end;

procedure TestThread.Execute;
var
  i : Integer;
  j : Double;
begin

  i:= 0;
  while not Terminated do
  begin
    if i >= 100 then i:= 0;

    Sleep(200);
    Percent := i;
    Synchronize(UpdateProgress);

    if Terminated then
      exit;
    inc(i);
  end;
end;

procedure TestThread.UpdateProgress;
begin
  FProgressBar.Position := Percent;
end;

end.

