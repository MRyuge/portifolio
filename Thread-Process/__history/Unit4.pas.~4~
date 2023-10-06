unit Unit4;
interface

uses
  Classes, ComCtrls,System.ImageList, Vcl.ImgList,Vcl.ExtCtrls,
  Vcl.Controls;

type
  PreLoadingThread = class(TThread)
  private
    FImage: Timage;
    FImageList: TImageList;
    Percent : Integer;
    procedure UpdateProgress;
  protected
    procedure Execute; override;
  public
    constructor Create(CreateSuspended : Boolean; Image :TImage; ImageList: TImageList); reintroduce;
  end;

implementation


{ TestThread }

constructor PreLoadingThread.Create(CreateSuspended: Boolean;
  Image :TImage; ImageList: TImageList );
begin

  FImage := Image;
  FImageList:= ImageList;

  inherited Create(CreateSuspended);


end;

procedure PreLoadingThread.Execute;
var
  i : Integer;
  j : Double;
begin

  i:= 0;
  while not Terminated do
  begin
    if i >= 8 then i:= 0;

    Sleep(200);
    Percent := i;
    Synchronize(UpdateProgress);

    if Terminated then
      exit;
    inc(i);
  end;
end;

procedure PreLoadingThread.UpdateProgress;
begin
//  FProgressBar.Position := Percent;
  FImageList.GetBitmap(Percent,FImage.Picture.Bitmap);
  FImage.Repaint;
end;

end.
