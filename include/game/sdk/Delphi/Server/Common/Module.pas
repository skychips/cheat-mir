unit Module;

interface
uses
  SDK, EngineType;

procedure MainOutMessasge(Msg: _STRING; nMode: Integer);
function GetProcAddr(sProcName: _STRING): Pointer;
function SetProcAddr(ProcAddr: Pointer; sProcName: _STRING): Boolean;
function GetObjAddr(sObjName: _STRING): TObject;
var
  OutMessage: TMsgProc;
  FindProcTable: TFindProc;
  FindObjTable: TFindObj;
  SetProcTable: TSetProc;
implementation

procedure MainOutMessasge(Msg: _STRING; nMode: Integer);
begin
  if Assigned(OutMessage) then begin
    OutMessage(_PCHAR(Msg), Length(Msg), nMode);
  end;
end;

function GetProcAddr(sProcName: _STRING): Pointer;
begin
  Result := nil;
  if Assigned(FindProcTable) then begin
    Result := FindProcTable(_PCHAR(sProcName), length(sProcName));
  end;
end;

function GetObjAddr(sObjName: _STRING): TObject;
begin
  Result := nil;
  if Assigned(FindObjTable) then begin
    Result := FindObjTable(_PCHAR(sObjName), length(sObjName));
  end;
end;

function SetProcAddr(ProcAddr: Pointer; sProcName: _STRING): Boolean;
begin
  Result := False;
  if Assigned(SetProcTable) then begin
    Result := SetProcTable(ProcAddr, _PCHAR(sProcName), length(sProcName));
  end;
end;


end.

