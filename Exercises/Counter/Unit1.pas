unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    tambah: TButton;
    kali: TButton;
    LabelHasil: TLabel;
    procedure tambahClick(Sender: TObject);
    procedure kaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
function getCounterAdd(input1, input2:integer):string;stdcall;external'counter.dll';
function getCounterMult(input1, input2:double):string;stdcall;external'counter.dll';

{$R *.dfm}


procedure TForm1.kaliClick(Sender: TObject);
begin
   LabelHasil.Caption:=getCounterMult(StrToFloat(Edit1.Text),StrToFloat(Edit2.Text))
end;

procedure TForm1.tambahClick(Sender: TObject);
begin
  LabelHasil.Caption:=getCounterAdd(StrToInt(Edit1.Text),StrToInt(Edit2.Text))
end;

end.
