library ScriptLoader;

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
  PlugMain in 'PlugMain.pas',
  PlugShare in 'PlugShare.pas',
  Module in '..\Common\Module.pas',
  SDK in '..\Common\SDK.pas',
  EngineAPI in '..\Common\EngineAPI.pas',
  EngineType in '..\Common\EngineType.pas';

{$R *.res}
//脚本第一行内容是 ;+++++++---------- 表示是加密脚本，M2会调用插件进行解密
//每行脚本的数据不能超过2048，超过将引发错误

procedure DeCryptString(Src: _PCHAR; Dest: _PCHAR; var nDest: Integer); stdcall;
var
  sEncode: _STRING;
  sDecode: _STRING;
begin
  if Src <> nil then begin
    sEncode := _STRING(Src);
    sDecode := DeCodeText(sEncode);
    if sDecode <> '' then begin
      nDest := Length(sDecode);
      Move(sDecode[1], Dest^, nDest);
    end;
  end;
end;

function Init(AppHandle: THandle; MsgProc: TMsgProc; FindProc: TFindProc; SetProc: TSetProc; FindOBj: TFindObj): _PCHAR; stdcall;
begin
  OutMessage := MsgProc;
  FindProcTable := FindProc;
  FindObjTable := FindOBj;
  SetProcTable := SetProc;
  SetProcAddr(@DeCryptString, 'DeCryptString');
  InitPlug();
  Result := _PCHAR(sPlugName);
end;

procedure UnInit(); stdcall;
begin
  UnInitPlug();
end;

exports
  Init, UnInit;
begin

end.

