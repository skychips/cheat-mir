unit SDK;

interface
uses
  EngineType;
type
  TMsgProc = procedure(Msg: _PCHAR; nMsgLen: Integer; nMode: Integer); stdcall;
  TFindProc = function(ProcName: _PCHAR; nNameLen: Integer): Pointer; stdcall;
  TSetProc = function(ProcAddr: Pointer; ProcName: _PCHAR; nNameLen: Integer): Boolean; stdcall;
  TFindObj = function(ObjName: _PCHAR; nNameLen: Integer): TObject; stdcall;
implementation
end.
