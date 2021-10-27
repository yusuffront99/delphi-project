library delphi1;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Dialogs,
  ZDataset,
  System.Classes;

{$R *.res}
procedure simpan(nama, kelas:TEdit; tglDaftar:TDateTimePicker; siswa:TZQuery); stdcall;
begin
    try
       if(Trim(nama.Text)='') then
          begin
            MessageDlg('Nama belum diisi', mtWarning, [mbOk], 0);
            nama.SetFocus;
          end
       else if(Trim(kelas.Text)='') then
          begin
            MessageDlg('Kelas belum diisi', mtWarning, [mbOk], 0);
            kelas.SetFocus;
          end
       else if siswa.Locate('nama',nama.Text,[]) then
          begin
            MessageDlg('Siswa dengan nama tersebut sudah terdaftar', mtInformation, [mbOk], 0);
            nama.Text:=siswa.FieldByName('nama').AsString;
            kelas.Text:=siswa.FieldByName('kelas').AsString;
            tglDaftar.Date:=siswa.FieldByName('tgl_daftar').AsDateTime;
           
          end else

          begin
            siswa.Append;
            siswa.FieldByName('nama').AsString:=nama.Text;
            siswa.FieldByName('kelas').AsString:=kelas.Text;
            siswa.FieldByName('tgl_daftar').AsDateTime:=tglDaftar.Date;
            siswa.Post;
            MessageDlg('Data berhasil disimpan', mtInformation, [mbOk], 0);
          end;
    except
      on err: Exception do
      MessageDlg(err.Message, mtError, [mbOk], 0);
    end;
end;

exports
simpan;

begin
end.
