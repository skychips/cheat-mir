unit NpcScriptCmd;

interface
uses
  Windows, SysUtils, EngineAPI, EngineType;
const
  nGIVEUSERITEM = 10000;
  szGIVEUSERITEM = 'GIVEUSERITEM';
  nTAKEUSERITEM = 10001;
  szTAKEUSERITEM = 'TAKEUSERITEM';

  nCHECKLEVEL = 10000;
  szCHECKLEVEL = 'CHECKLEVEL';

procedure InitNpcScriptCmd();
procedure UnInitNpcScriptCmd();
function ScriptActionCmd(pszCmd: _PCHAR): Integer; stdcall;
function ScriptConditionCmd(pszCmd: _PCHAR): Integer; stdcall;

function ScriptAction(Npc: TObject; PlayObject, BaseObject: TObject; nCmdCode: Integer; //pszRawParam1 到 pszRawParam10 是原始数据，引擎没有处理的
  pszRawParam1: _PCHAR; pszRawParam2: _PCHAR; pszRawParam3: _PCHAR; pszRawParam4: _PCHAR; pszRawParam5: _PCHAR;
  pszRawParam6: _PCHAR; pszRawParam7: _PCHAR; pszRawParam8: _PCHAR; pszRawParam9: _PCHAR; pszRawParam10: _PCHAR;

  pszParam1: _PCHAR; nParam1: Integer; pszParam2: _PCHAR; nParam2: Integer;
  pszParam3: _PCHAR; nParam3: Integer; pszParam4: _PCHAR;
  nParam4: Integer; pszParam5: _PCHAR; nParam5: Integer;
  pszParam6: _PCHAR; nParam6: Integer;
  pszParam7: _PCHAR; nParam7: Integer;
  pszParam8: _PCHAR; nParam8: Integer;
  pszParam9: _PCHAR; nParam9: Integer;
  pszParam10: _PCHAR; nParam10: Integer): Boolean; stdcall; //,脚本中的变量引擎已经处理,插件无需处理

function ScriptCondition(Npc: TObject; PlayObject, BaseObject: TObject; nCmdCode: Integer; //pszRawParam1 到 pszRawParam10 是原始数据，引擎没有处理的
  pszRawParam1: _PCHAR; pszRawParam2: _PCHAR; pszRawParam3: _PCHAR; pszRawParam4: _PCHAR; pszRawParam5: _PCHAR;
  pszRawParam6: _PCHAR; pszRawParam7: _PCHAR; pszRawParam8: _PCHAR; pszRawParam9: _PCHAR; pszRawParam10: _PCHAR;

  pszParam1: _PCHAR;
  nParam1: Integer; pszParam2: _PCHAR; nParam2: Integer;
  pszParam3: _PCHAR; nParam3: Integer; pszParam4: _PCHAR;
  nParam4: Integer; pszParam5: _PCHAR; nParam5: Integer;
  pszParam6: _PCHAR; nParam6: Integer;
  pszParam7: _PCHAR; nParam7: Integer;
  pszParam8: _PCHAR; nParam8: Integer;
  pszParam9: _PCHAR; nParam9: Integer;
  pszParam10: _PCHAR; nParam10: Integer): Boolean; stdcall; //,脚本中的变量引擎已经处理,插件无需处理

function GetVariableText(NPC: TNormNpc; PlayObject: TPlayObject; sVariable: _PCHAR; sValue: _PCHAR; var nLen: Integer): Boolean; stdcall;

var
  OldScriptActionCmd: TLoadScriptCmd;
  OldScriptConditionCmd: TLoadScriptCmd;
  OldScriptAction: TScriptProcess;
  OldScriptCondition: TScriptProcess;
  OldGetVariableText: TGetVariableText;
implementation

procedure InitNpcScriptCmd();
begin
  OldScriptActionCmd := GetHookLoadQuestActionCmd();
  OldScriptConditionCmd := GetHookLoadQuestConditionCmd();
  OldScriptAction := GetHookQuestActionProcess();
  OldScriptCondition := GetHookQuestConditionProcess();
  OldGetVariableText := GetHookGetVariableText();

  SetHookLoadQuestActionCmd(ScriptActionCmd);
  SetHookLoadQuestConditionCmd(ScriptConditionCmd);
  SetHookQuestActionProcess(ScriptAction);
  SetHookQuestConditionProcess(ScriptCondition);
  SetHookGetVariableText(GetVariableText);
end;

procedure UnInitNpcScriptCmd();
begin
  SetHookLoadQuestActionCmd(OldScriptActionCmd);
  SetHookLoadQuestConditionCmd(OldScriptConditionCmd);
  SetHookQuestActionProcess(OldScriptAction);
  SetHookQuestConditionProcess(OldScriptCondition);
  SetHookGetVariableText(OldGetVariableText);
end;

function ScriptActionCmd(pszCmd: _PCHAR): Integer; stdcall;
begin
  if StrIComp(pszCmd, szGIVEUSERITEM) = 0 then begin
    Result := nGIVEUSERITEM;
  end else
    if StrIComp(pszCmd, szTAKEUSERITEM) = 0 then begin
    Result := nTAKEUSERITEM;
  end else begin
    if Assigned(OldScriptActionCmd) then begin //调用下一个插件处理函数
      Result := OldScriptActionCmd(pszCmd);
    end else Result := -1;
  end;
end;

function ScriptConditionCmd(pszCmd: _PCHAR): Integer; stdcall;
begin
  if StrIComp(pszCmd, szCHECKLEVEL) = 0 then begin
    Result := nCHECKLEVEL;
  end else begin
    if Assigned(OldScriptConditionCmd) then begin //调用下一个插件处理函数
      Result := OldScriptConditionCmd(pszCmd);
    end else Result := -1;
  end;
end;

procedure ActionOfGiveUserItem(Npc: TObject; PlayObject: TObject; pszItemName: _PCHAR; nCount: Integer);
begin
  //TBaseObject_SysMsg(PlayObject, '成功调用插件脚本命令GiveUserItem', 249, 255, t_Hint);
end;

procedure ActionOfTakeUserItem(Npc: TObject; PlayObject: TObject; pszItemName: _PCHAR; nCount: Integer);
begin
 // TBaseObject_SysMsg(PlayObject, '成功调用插件脚本命令TakeUserItem', 249, 255, t_Hint);
end;

function ScriptAction(Npc: TObject; PlayObject, BaseObject: TObject; nCmdCode: Integer;
  pszRawParam1: _PCHAR; pszRawParam2: _PCHAR; pszRawParam3: _PCHAR; pszRawParam4: _PCHAR; pszRawParam5: _PCHAR;
  pszRawParam6: _PCHAR; pszRawParam7: _PCHAR; pszRawParam8: _PCHAR; pszRawParam9: _PCHAR; pszRawParam10: _PCHAR;
  pszParam1: _PCHAR; nParam1: Integer; pszParam2: _PCHAR; nParam2: Integer;
  pszParam3: _PCHAR; nParam3: Integer; pszParam4: _PCHAR;
  nParam4: Integer; pszParam5: _PCHAR; nParam5: Integer;
  pszParam6: _PCHAR; nParam6: Integer;
  pszParam7: _PCHAR; nParam7: Integer;
  pszParam8: _PCHAR; nParam8: Integer;
  pszParam9: _PCHAR; nParam9: Integer;
  pszParam10: _PCHAR; nParam10: Integer): Boolean; stdcall;
begin
  Result := TRUE;
  case nCmdCode of
    nGIVEUSERITEM: ActionOfGiveUserItem(Npc, PlayObject, pszParam1, nParam2);
    nTAKEUSERITEM: ActionOfTakeUserItem(Npc, PlayObject, pszParam1, nParam2);
  end;
end;

function ScriptCondition(Npc: TObject; PlayObject, BaseObject: TObject; nCmdCode: Integer;
  pszRawParam1: _PCHAR; pszRawParam2: _PCHAR; pszRawParam3: _PCHAR; pszRawParam4: _PCHAR; pszRawParam5: _PCHAR;
  pszRawParam6: _PCHAR; pszRawParam7: _PCHAR; pszRawParam8: _PCHAR; pszRawParam9: _PCHAR; pszRawParam10: _PCHAR;
  pszParam1: _PCHAR; nParam1: Integer; pszParam2: _PCHAR; nParam2: Integer;
  pszParam3: _PCHAR; nParam3: Integer; pszParam4: _PCHAR;
  nParam4: Integer; pszParam5: _PCHAR; nParam5: Integer;
  pszParam6: _PCHAR; nParam6: Integer;
  pszParam7: _PCHAR; nParam7: Integer;
  pszParam8: _PCHAR; nParam8: Integer;
  pszParam9: _PCHAR; nParam9: Integer;
  pszParam10: _PCHAR; nParam10: Integer): Boolean; stdcall;
begin
  Result := TRUE;
  case nCmdCode of
    nCHECKLEVEL: Result := FALSE;
  end;
end;

function GetVariableText(NPC: TNormNpc; PlayObject: TPlayObject; sVariable: _PCHAR; sValue: _PCHAR; var nLen: Integer): Boolean;
var
  sText: _STRING;
begin
  Result := FALSE;
  if StrIComp(sVariable, '$BAGCOUNT') = 0 then begin
    sText := IntToStr(TList_Count(TBaseObject_ItemList(PlayObject)));
    nLen := Length(sText);
    Move(sText[1], sValue^, nLen);
    Result := TRUE;
    Exit;
  end;
  if Assigned(OldGetVariableText) then
    Result := OldGetVariableText(NPC, PlayObject, sVariable, sValue, nLen);
end;

end.

