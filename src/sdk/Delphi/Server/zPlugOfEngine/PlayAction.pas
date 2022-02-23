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
    CM_SPELL: ;//TBaseObject_SysMsg(BaseObject, '����ʹ��ħ��', 249, 255, t_Hint);

    CM_DROPITEM: ;//TBaseObject_SysMsg(BaseObject, '��������Ʒ', 249, 255, t_Hint);
    CM_PICKUP: ;//TBaseObject_SysMsg(BaseObject, '���ڼ���Ʒ', 249, 255, t_Hint);
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
    CM_WALK: ;//TBaseObject_SysMsg(BaseObject, '������', 249, 255, t_Hint);
    CM_SITDOWN: ;
    CM_RUN: ;//TBaseObject_SysMsg(BaseObject, '������', 249, 255, t_Hint);
    CM_HORSERUN: ;

    CM_HIT,
      CM_HEAVYHIT,
      CM_BIGHIT,

    CM_POWERHIT,
      CM_LONGHIT,

    CM_WIDEHIT, //����
      CM_FIREHIT, //�һ�
      CM_CRSHIT, //���µ� ˫��ն
      CM_TWNHIT, //��Ӱ����
      CM_43HIT, //��������
      CM_SWORDHIT, //���ս���

    CM_100HIT, //׷�Ĵ�
      CM_101HIT, //����ɱ
      CM_102HIT: ;//TBaseObject_SysMsg(BaseObject, '���ڹ���', 249, 255, t_Hint); //����ն
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

