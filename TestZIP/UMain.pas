unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  System.Zip, Vcl.Grids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnList, Vcl.ExtCtrls,
  Vcl.ImgList, System.ImageList, System.Actions;

type
  TForm3 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    ActionList1: TActionList;
    ActionNovoZIP: TAction;
    ActionAddFiles: TAction;
    ActionOpen: TAction;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    StringGrid1: TStringGrid;
    OpenDialog1: TOpenDialog;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    OpenDialogZIP: TOpenDialog;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ActionTest: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ActionExtract: TAction;
    pnlName: TPanel;
    ToolButton7: TToolButton;
    pnlArrastar: TPanel;
    imgArrastar: TImage;
    procedure ActionNovoZIPExecute(Sender: TObject);
    procedure ActionAddFilesExecute(Sender: TObject);
    procedure ActionOpenExecute(Sender: TObject);
    procedure ActionTestExecute(Sender: TObject);
    procedure ActionExtractExecute(Sender: TObject);
    procedure StatusBar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    xf:TZIPFile;
    FzipFileName:string;

    originalImageWindowProc: TWndMethod;

    procedure FilesDrop(var Msg: TWMDROPFILES);
    procedure ImageWindowProc(var Msg: TMessage);
    procedure _UpdateFiles();
    procedure _LimpiarGrid();
    procedure SetzipFileName(const Value: string);
    property zipFileName:string read FzipFileName write SetzipFileName;

  public
    { Public declarations }
  end;

var
  Form3: TForm3;


implementation

{$R *.dfm}

uses
  FileCtrl, ShellAPI;

procedure TForm3.ActionAddFilesExecute(Sender: TObject);
var
  b:Boolean;
  i:integer;
begin


  if not Assigned(xf) then begin
    ActionNovoZIPExecute(nil);
  end;

  b :=  OpenDialog1.Execute;
  if (b) then begin
    xf.Open(zipFileName, zmReadWrite);
    for i := 0 to (OpenDialog1.Files.Count - 1) do
    begin
      xf.Add(OpenDialog1.Files[i]);
    end;
    xf.Close;
  end;
  _UpdateFiles();

end;

procedure TForm3.ActionExtractExecute(Sender: TObject);
var
  b:boolean;
  DirOut:String;
begin

  if (zipFileName = '') then begin
    // Abrir
    ActionOpen.Execute;
    if (zipFileName = '') then
    begin
      Exit;
    end;
  end;

  b := xf.IsValid(zipFileName);
  if not (b) then begin
    MessageDlg('Falha ao abrir o arquivo. Incorreto ou corrompido.', mtError, [mbOK], 0);
    exit;
  end;

  b := SelectDirectory('Selecione a pasta para extrair arquivos','', DirOut);
  if (b) then begin
    try
      xf.Open(zipFileName, zmRead);
      xf.ExtractAll(DirOut);
      xf.Close;
      MessageDlg('A extra��o ocorreu correctamente', mtInformation, [mbOK], 0);
    except
      MessageDlg('Houve um erro durante a extra��o dos arquivos.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TForm3.ActionNovoZIPExecute(Sender: TObject);
var
  b:boolean;
begin

  b := OpenDialogZIP.Execute();
  if not (b) then begin
    exit;
  end;

  zipFileName := OpenDialogZIP.FileName;
  zipFileName := ChangeFileExt(zipFileName, '.zip');
  // Continuar
  xf := TZIPFile.Create();
  xf.Open(zipFileName, zmWrite);
  xf.Close;

  pnlArrastar.Visible := False;
end;

procedure TForm3.ActionOpenExecute(Sender: TObject);
var
  b:boolean;
begin

  OpenDialogZIP.Options := OpenDialogZIP.Options + [ofPathMustExist];
  // Abrir
  b := OpenDialogZIP.Execute();
  if not (b) then begin
    exit;
  end;

  zipFileName := OpenDialogZIP.FileName;
  // Revisar se correto
  b := xf.IsValid(zipFileName);

  if not (b) then begin
    MessageDlg('Falha ao abrir o arquivo. Incorreto ou corrompido.', mtError, [mbOK], 0);
    exit;
  end;

  if not Assigned(xf) then begin
    xf := TZIPFile.Create();
    pnlArrastar.Visible := False;
  end;

  _UpdateFiles();

end;

procedure TForm3.ActionTestExecute(Sender: TObject);
var
  b:boolean;
begin

  if (zipFileName = '') then begin
    ActionOpen.Execute;
    if (zipFileName = '') then
    begin
      Exit;
    end;
  end;

  // Valido
  b := xf.IsValid(zipFileName);

  if (b) then begin
    MessageDlg('O arquivo parece correto', mtInformation, [mbOK], 0);
  end
  else begin
    MessageDlg('O arquivo n�o parece correto.', mtWarning, [mbOK], 0);
  end;

end;

procedure TForm3.FilesDrop(var Msg: TWMDROPFILES);
var
  i: Integer;
  DroppedFilename: string;
  numFiles: longInt;
  buffer: array [0 .. MAX_PATH] of char;
begin

  numFiles := DragQueryFile(Msg.Drop, $FFFFFFFF, nil, 0);

  if not Assigned(xf) then begin
    ActionNovoZIPExecute(nil);
  end;
  xf.Open(zipFileName, zmReadWrite);
  try
    for i := 0 to (numFiles - 1) do begin
      DragQueryFile(Msg.Drop, i, @buffer, sizeof(buffer));
      try
        DroppedFilename := buffer;
        xf.Add(DroppedFilename);

      except
        on E: Exception do
        begin
          // Nada
        end;
      end;
    end;
  finally
    xf.Close;
    _UpdateFiles();
  end;

end;

procedure TForm3.FormResize(Sender: TObject);
begin
  pnlArrastar.Left := (Self.Width DIV 2) - (pnlArrastar.Width DIV 2);
  pnlArrastar.Top := (Self.Height DIV 2) - (pnlArrastar.Height DIV 2);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  // Configurar DragDrop
  originalImageWindowProc := pnlArrastar.WindowProc;
  pnlArrastar.WindowProc := ImageWindowProc;
  DragAcceptFiles(pnlArrastar.Handle, True);
end;

procedure TForm3.ImageWindowProc(var Msg: TMessage);
begin
  if Msg.Msg = WM_DROPFILES then begin
    FilesDrop(TWMDROPFILES(Msg))
  end
  else begin
    originalImageWindowProc(Msg);
  end;
end;

procedure TForm3.SetzipFileName(const Value: string);
begin
  Self.FzipFileName := Value;
  pnlName.Caption := Value;
end;

procedure TForm3.StatusBar1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Abrir
  ShellExecute(Handle, 'open', PChar('https://github.com/MRyuge/portifolio/tree/main'), nil, nil, SW_SHOW);
end;

procedure TForm3._LimpiarGrid;
var
  i:integer;
begin
  for i := (StringGrid1.RowCount) downto 0 do begin
    StringGrid1.Rows[i].Clear;
  end;

  StringGrid1.RowCount := 2;
  StringGrid1.FixedRows := 1;

  // Colunas
  StringGrid1.Cells[0, 0] := 'Nome do Arquivo';
  StringGrid1.Cells[1, 0] := 'Tam. Compac.';
  StringGrid1.Cells[2, 0] := 'Tam. Descomp.';
  StringGrid1.Cells[3, 0] := 'Porcentagem';
  StringGrid1.Cells[4, 0] := 'Mod. Date';
  StringGrid1.Cells[5, 0] := 'Coment�rio';

end;

procedure TForm3._UpdateFiles;
var
  i:integer;
  str:String;
  zh:TZipHeader;
begin

  _LimpiarGrid();

  if not Assigned(xf) then begin
    Exit;
  end;

  xf.Open(zipFileName, zmRead);
  try
    for i := 0 to (xf.FileCount - 1)do
    begin
      zh := xf.FileInfo[i];
      StringGrid1.Cells[0, i+1] := TEncoding.UTF8.GetString(zh.FileName);
      StringGrid1.Cells[1, i+1] := IntToStr(zh.CompressedSize);
      StringGrid1.Cells[2, i+1] := IntToStr(zh.UncompressedSize);

      if (zh.UncompressedSize > 0) then
      begin
        Str := IntToStr(Round((zh.CompressedSize / zh.UncompressedSize) * 100));
      end
      else
      begin
        Str := '0';
      end;
      StringGrid1.Cells[3, i+1] := Str + ' %';
      StringGrid1.Cells[4, i+1] := DateToStr(zh.ModifiedDateTime);
      StringGrid1.Cells[5, i+1] := TEncoding.UTF8.GetString(zh.FileComment);
    end;
  finally
    StringGrid1.RowCount := xf.FileCount + 1;
    xf.Close;
  end;


end;

end.
