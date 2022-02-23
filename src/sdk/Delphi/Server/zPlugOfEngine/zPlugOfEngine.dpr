library zPlugOfEngine;

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
  EngineAPI in '..\Common\EngineAPI.pas',
  EngineType in '..\Common\EngineType.pas',
  Module in '..\Common\Module.pas',
  SDK in '..\Common\SDK.pas',
  PlayAction in 'PlayAction.pas',
  NpcScriptCmd in 'NpcScriptCmd.pas',
  MapMagicAttack in 'MapMagicAttack.pas';

{$R *.res}

function Init(Apphandle: THandle; MsgProc: TMsgProc; FindProc: TFindProc; SetProc: TSetProc; FindOBj: TFindObj): _PCHAR; stdcall;
begin
  OutMessage := MsgProc;
  FindProcTable := FindProc;
  FindObjTable := FindOBj;
  SetProcTable := SetProc;
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

