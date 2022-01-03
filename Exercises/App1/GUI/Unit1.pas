unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    enoreg: TEdit;
    enama: TEdit;
    espp: TEdit;
    bSimpan: TButton;
    bEdit: TButton;
    bHapus: TButton;
    dtglDaftar: TDateTimePicker;
    connection: TZConnection;
    siswa: TZQuery;
    data: TDataSource;
    DBGrid1: TDBGrid;
    procedure bSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
 procedure simpanData(noreg,nama,spp:TEdit; tglDaftar:TDateTimePicker; siswa:TZQuery);stdcall;external'App.dll';
{$R *.dfm}

procedure TForm1.bSimpanClick(Sender: TObject);
begin
 simpanData(enoreg,enama,espp,dtglDaftar,siswa);
end;

end.
