unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    enoreg: TEdit;
    enama: TEdit;
    etempat: TEdit;
    Button1: TButton;
    connection: TZConnection;
    datasiswa: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    dtglLahir: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
 procedure addData(noreg,nama,tempat:TEdit; tglLahir:TDateTimePicker; datasiswa:TZQuery);stdcall;external'crud.dll';
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  addData(enoreg,enama,etempat,dtglLahir,datasiswa);
end;

end.
