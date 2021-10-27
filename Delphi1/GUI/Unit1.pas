unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.ComCtrls, ZAbstractConnection,
  ZConnection;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    enama: TEdit;
    ekelas: TEdit;
    btnSimpan: TButton;
    tglDaftar: TDateTimePicker;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    siswa: TZQuery;
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
procedure simpan(nama, kelas:TEdit; tglDaftar:TDateTimePicker; siswa:TZQuery); stdcall; external'delphi1.dll';

{$R *.dfm}

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
    simpan(enama, ekelas, tglDaftar, siswa);
end;

end.
