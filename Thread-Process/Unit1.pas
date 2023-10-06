unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,unit3, Vcl.StdCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,unit4;

type
  TForm1 = class(TForm)
    ProgressBar2: TProgressBar;
    Button2: TButton;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Image1: TImage;
    ImageList1: TImageList;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  PreLoadingThread.Create(False,image1,ImageList1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TestThread.Create(False,ProgressBar2);
end;

end.
