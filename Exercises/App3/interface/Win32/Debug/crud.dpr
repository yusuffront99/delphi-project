library crud;

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
  Vcl.Controls,
  ZDataset,
  System.Classes;

{$R *.res}
   procedure addData(noreg,nama,tempat:TEdit; tglLahir:TDateTimePicker; datasiswa:TZQuery);stdcall;
   begin
     try
      if(Trim(noreg.Text)='') then
        begin
          MessageDlg('Data tidak boleh kosong', mtWarning, [mbOK], 0);
          noreg.SetFocus;
        end else
      if(Trim(nama.Text)='') then
        begin
          MessageDlg('Data tidak boleh kosong', mtWarning, [mbOK], 0);
          noreg.SetFocus;
        end else
      if(Trim(tempat.Text)='') then
        begin
          MessageDlg('Data tidak boleh kosong', mtWarning, [mbOK], 0);
          noreg.SetFocus;
        end else
      if datasiswa.Locate('noreg',noreg.Text,[]) then
        begin
          MessageDlg('Noreg sudah terdaftar',mtInformation,[mbOK],0);
          noreg.Text:=datasiswa.FieldByName('noreg').AsString;
          nama.Text:=datasiswa.FieldByName('nama').AsString;
          tempat.Text:=datasiswa.FieldByName('tempat_lahir').AsString;
          tglLahir.Date:=datasiswa.FieldByName('tgl_lahir').AsDateTime;
        end else

        begin
          datasiswa.Append;
          datasiswa.FieldByName('noreg').AsString:=noreg.Text;
          datasiswa.FieldByName('nama').AsString:=nama.Text;
          datasiswa.FieldByName('tempat_lahir').AsString:=tempat.Text;
          datasiswa.FieldByName('tgl_lahir').AsDateTime:=tglLahir.Date;
          datasiswa.Post;
          MessageDlg('Data berhasil disimpan', mtInformation,[mbOK],0);
        end;
     except
       on err:Exception do
       MessageDlg(err.Message, mtError, [mbOK], 0);
     end;
   end;

   exports
   addData;
begin
end.
