unit MapMagicAttack;

//��ͼħ������

interface
uses
  Windows, SysUtils, Classes, EngineAPI, EngineType;
procedure InitMapMagicAttack();
procedure UnInitMapMagicAttack();
procedure LoadMapMagicAttackList;
procedure UnLoadMapMagicAttackList;
function CanAttack(Envir: TEnvirnoment; nX, nY: Integer; var nDamage: Integer): Boolean;

procedure ObjectActionIndex(BaseObject: TObject; Index: Integer); stdcall;
procedure StartEngine; stdcall;

implementation
var
  OldObjectActionIndex: TObjectActionIndex;
  OldStartEngine: TStart;
  MapMagicAttackList: Classes.TList;

type
  TMapMagicInfo = record
    Envir: TEnvirnoment;
    nX, nY, nFileIndex, nImageOffset, nImageCount, nLoopCount, nSpeedTime: Integer; //nLoopCount<0ʱ ħ��Ч������ʧ
    boBlend: Boolean;
    nDamage: Integer; //����
  end;
  pTMapMagicInfo = ^TMapMagicInfo;

procedure InitMapMagicAttack();
begin
  OldObjectActionIndex := GetHookObjectWalkIndex();
  OldStartEngine := GetHookStartEngine();
  SetHookObjectWalkIndex(ObjectActionIndex);
  SetHookStartEngine(StartEngine);
end;

procedure UnInitMapMagicAttack();
begin
  SetHookObjectWalkIndex(OldObjectActionIndex);
  SetHookStartEngine(OldStartEngine);
end;

procedure LoadMapMagicAttackList;
begin
  MapMagicAttackList := Classes.TList.Create;
end;

procedure UnLoadMapMagicAttackList;
var
  I: Integer;
begin
  if MapMagicAttackList <> nil then begin
    for I := 0 to MapMagicAttackList.Count - 1 do
      Dispose(pTMapMagicInfo(MapMagicAttackList.Items[I]));
    MapMagicAttackList.Free;
    MapMagicAttackList := nil;
  end;
end;

function CanAttack(Envir: TEnvirnoment; nX, nY: Integer; var nDamage: Integer): Boolean;
var
  I: Integer;
  MapMagicInfo: pTMapMagicInfo;
begin
  Result := False;
  if MapMagicAttackList <> nil then begin
    for I := 0 to MapMagicAttackList.Count - 1 do begin
      MapMagicInfo := MapMagicAttackList.Items[I];
      if (MapMagicInfo.Envir = Envir) and (MapMagicInfo.nX = nX) and (MapMagicInfo.nY = nY) and (MapMagicInfo.nDamage > 0) then begin
        nDamage := MapMagicInfo.nDamage;
        Result := True;
        break;
      end;
    end;
  end;
end;

function GetMaster(BaseObject: TBaseObject): TBaseObject;
var
  Master: TBaseObject;
  MasterObject: pTBaseObject;
begin
  Master := BaseObject;
  while True do begin
    MasterObject := TBaseObject_Master(Master);
    if MasterObject = nil then break;
    if MasterObject^ = nil then break;
    Master := MasterObject^;
  end;

  if Master = BaseObject then
    Master := nil;
  Result := Master;
end;

procedure ObjectActionIndex(BaseObject: TObject; Index: Integer);
var
  MasterObject: TBaseObject;
  Envir: TEnvirnoment;
  nDamage: Integer;
begin
  MasterObject := GetMaster(BaseObject);
  if (TBaseObject_btRaceServer(BaseObject) in [RC_PLAYOBJECT, RC_HEROOBJECT]) or
    ((MasterObject <> nil) and (TBaseObject_btRaceServer(MasterObject) in [RC_PLAYOBJECT, RC_HEROOBJECT])) then begin //ֻ���������Ӣ�� �����ǵı���

    if CanAttack(Envir, TBaseObject_nCurrX(BaseObject)^, TBaseObject_nCurrY(BaseObject)^, nDamage) then
      TBaseObject_StruckDamage(BaseObject, nDamage);
  end;

  if Assigned(OldObjectActionIndex) then //������һ�����������
    OldObjectActionIndex(BaseObject, Index);
end;

procedure StartEngine;
var
  Envir: TEnvirnoment;
  I, nX, nY, nFileIndex, nImageOffset, nImageCount, nLoopCount, nSpeedTime: Integer; //nLoopCount<0ʱ ħ��Ч������ʧ
  boBlend: Boolean;
  LoadList: Classes.TStringList;
  MapMagicInfo: pTMapMagicInfo;
  sFileName: string;
begin
 //��ʼ��ȡ�����ڵ�ͼ�Ϸֲ�ħ��Ч��
  //TEnvirnoment_MapEffect(Envir, nX, nY, nFileIndex, nImageOffset, nImageCount, nLoopCount, nSpeedTime, boBlend); //��ͼ����Ч��
  UnLoadMapMagicAttackList;
  sFileName := M2Server_TConfig_sEnvirDir + 'MapMagicAttack.txt';
  LoadList := Classes.TStringList.Create;
  try
    LoadList.LoadFromFile(sFileName);
  except

  end;
  
  for I := 0 to LoadList.Count - 1 do begin

  end;

  LoadList.Free;
  if Assigned(OldStartEngine) then //������һ�����������
    OldStartEngine();
end;

end.

