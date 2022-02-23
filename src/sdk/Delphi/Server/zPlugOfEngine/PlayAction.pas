unit PlayAction;

interface
uses
  Windows, SysUtils, EngineAPI, EngineType;
procedure InitPlayAction();
procedure UnInitPlayAction();
function PlayObjectStopOperateMessage(BaseObject: TObject;
  wIdent: Word;
  wParam: Integer;
  nParam1: Integer;
  nParam2: Integer;
  nParam3: Integer;
  MsgObject: TObject;
  dwDeliveryTime: LongWord;
  pszMsg: _PCHAR;
  var boReturn: Boolean): Boolean; stdcall;
implementation
var
  OldPlayObjectFilterStopOperateMessage: TObjectOperateMessage;

procedure InitPlayAction();
begin
  OldPlayObjectFilterStopOperateMessage := GetHookPlayObjectFilterStopOperateMessage();
  SetHookPlayObjectFilterStopOperateMessage(PlayObjectStopOperateMessage);
end;

procedure UnInitPlayAction();
begin
  SetHookPlayObjectFilterStopOperateMessage(OldPlayObjectFilterStopOperateMessage);
end;

function PlayObjectStopOperateMessage(BaseObject: TObject;
  wIdent: Word;
  wParam: Integer;
  nParam1: Integer;
  nParam2: Integer;
  nParam3: Integer;
  MsgObject: TObject;
  dwDeliveryTime: LongWord;
  pszMsg: _PCHAR;
  var boReturn: Boolean): Boolean;
begin
  Result := True;
  boReturn := False;
  case wIdent of
    CM_SPELL: ;//TBaseObject_SysMsg(BaseObject, '你在使用魔法', 249, 255, t_Hint);

    CM_DROPITEM: ;//TBaseObject_SysMsg(BaseObject, '你在扔物品', 249, 255, t_Hint);
    CM_PICKUP: ;//TBaseObject_SysMsg(BaseObject, '你在捡物品', 249, 255, t_Hint);
    CM_TAKEONITEM: ;
    CM_TAKEOFFITEM: ;
    CM_EAT: ;
    CM_BUTCH: ;
    CM_MAGICKEYCHANGE: ;

    CM_CLICKNPC: ;
    CM_MERCHANTDLGSELECT: ;

    CM_USERSELLITEM: ;
    CM_USERBUYITEM: ;
    CM_TURN: ;
    CM_WALK: ;//TBaseObject_SysMsg(BaseObject, '你在走', 249, 255, t_Hint);
    CM_SITDOWN: ;
    CM_RUN: ;//TBaseObject_SysMsg(BaseObject, '你在跑', 249, 255, t_Hint);
    CM_HORSERUN: ;

    CM_HIT,
      CM_HEAVYHIT,
      CM_BIGHIT,

    CM_POWERHIT,
      CM_LONGHIT,

    CM_WIDEHIT, //半月
      CM_FIREHIT, //烈火
      CM_CRSHIT, //抱月刀 双龙斩
      CM_TWNHIT, //龙影剑法
      CM_43HIT, //雷霆剑法
      CM_SWORDHIT, //逐日剑法

    CM_100HIT, //追心刺
      CM_101HIT, //三绝杀
      CM_102HIT: ;//TBaseObject_SysMsg(BaseObject, '你在攻击', 249, 255, t_Hint); //断岳斩
  end;

  if Assigned(OldPlayObjectFilterStopOperateMessage) then
    Result := OldPlayObjectFilterStopOperateMessage(BaseObject,
      wIdent,
      wParam,
      nParam1,
      nParam2,
      nParam3,
      MsgObject,
      dwDeliveryTime,
      pszMsg,
      boReturn);
end;

end.

