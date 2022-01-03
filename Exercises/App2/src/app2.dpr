library app2;

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
  Vcl.Dialogs,
  Vcl.ComCtrls,
  System.Classes;

{$R *.res}
 procedure test(noreg,nama:TEdit; tgl:TDateTimePicker);stdcall;
 begin
     try
      if(Trim(noreg.Text)='') then
        begin
          MessageDlg('Data belum diisi',mtWarning, [mbOK],0);
          noreg.SetFocus;
        end
     except
      on err:Exception do
      MessageDlg(err.Message, mtError, [mbOK], 0);
     end;
 end;

 exports
 test;
begin
end.
