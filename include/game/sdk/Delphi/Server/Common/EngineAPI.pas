unit EngineAPI;

interface
uses
  Windows, SysUtils, EngineType, Module;
procedure TMemoryManager_Get(ShareMemoryManage: pTShareMemoryManage); stdcall;
//------------------------------------------------------------------------------
//在M2Server.exe中添加菜单
function M2Server_TMainMenu_MenuItem: TMenuItem; stdcall;
function M2Server_TMainMenu_MenuItem_Count(MenuItem: TMenuItem): Integer; stdcall;
function M2Server_TMainMenu_MenuItem_Get(MenuItem: TMenuItem; Index: Integer): TMenuItem; stdcall;
function M2Server_TMainMenu_MenuItem_GetCaption(MenuItem: TMenuItem): _PCHAR; stdcall;
function M2Server_TMainMenu_MenuItem_Add(MenuItem: TMenuItem; Caption: _PCHAR; OnClick: TNotifyEvent): TMenuItem; stdcall;
function M2Server_TMainMenu_MenuItem_Insert(MenuItem: TMenuItem; Index: Integer; Caption: _PCHAR; OnClick: TNotifyEvent): TMenuItem; stdcall;
//------------------------------------------------------------------------------
function M2Server_TConfig_sEnvirDir: _PCHAR; stdcall; //Envir目录
function M2Server_TConfig_btMaxAbil: PByte; stdcall; //最高属性0=65535 1=21E
function M2Server_TConfig_GlobaDyMval: PInteger; stdcall; //I变量 0~499
function M2Server_TConfig_GlobalVal: PInteger; stdcall; //G变量 0~499
function M2Server_TConfig_GetGlobalAVal(Index: Integer): _PCHAR; stdcall; //A变量 0~499
procedure M2Server_TConfig_SetGlobalAVal(Index: Integer; Value: _PCHAR); stdcall; //A变量 0~499
function M2Server_EncodeBuffer(InData: _PCHAR; InBytes: Integer; OutData: _PCHAR): Integer; stdcall;
function M2Server_DecodeBuffer(InData: _PCHAR; InBytes: Integer; OutData: _PCHAR): Integer; stdcall;
procedure M2Server_EncryBuffer(InData: _PCHAR; InBytes: Integer; OutData: _PCHAR); stdcall; //OutData为加密后的数据 加密后数据长度不变
function M2Server_GetTakeOnPosition(StdMode: Integer): Integer; stdcall;
function M2Server_GetUseItemIdx(sName: _PCHAR): Integer; stdcall;
procedure M2Server_UserItemToClientItem(UserItem: _LPTUSERITEM; var ClientItem: _TClientItem); stdcall;
function M2Server_GetItemRules(sItemName: _PCHAR; nFlag: Integer): Boolean; stdcall; //检测物品是否在物品规则列表 nFlag值到0~13 分别对应M2-列表2中的物品规则
function M2Server_FilterTexts(pMsg: _PCHAR; pNewMsg: _PCHAR): Boolean; stdcall; //过滤消息
//------------------------------------------------------------------------------
function TList_Create(): TList; stdcall;
procedure TList_Free(List: TList); stdcall;
function TList_Count(List: TList): Integer; stdcall;
procedure TList_Add(List: TList; Item: Pointer); stdcall;
procedure TList_Insert(List: TList; Index: Integer; Item: Pointer); stdcall;
function TList_Get(List: TList; Index: Integer): Pointer; stdcall;
procedure TList_Put(List: TList; Index: Integer; Item: Pointer); stdcall;
procedure TList_Delete(List: TList; Index: Integer); stdcall;
procedure TList_Clear(List: TList); stdcall;
//------------------------------------------------------------------------------
function TStringList_Create(): TStringList; stdcall;
procedure TStringList_Free(List: TStringList); stdcall;
function TStringList_Count(List: TStringList): Integer; stdcall;
procedure TStringList_Add(List: TStringList; S: _PCHAR); stdcall;
procedure TStringList_AddObject(List: TStringList; S: _PCHAR; AObject: TObject); stdcall;
procedure TStringList_Insert(List: TStringList; Index: Integer; S: _PCHAR; AObject: TObject); stdcall;
function TStringList_Get(List: TStringList; Index: Integer): _PCHAR; stdcall;
function TStringList_GetObject(List: TStringList; Index: Integer): TObject; stdcall;
procedure TStringList_Put(List: TStringList; Index: Integer; AObject: TObject); stdcall;
procedure TStringList_PutObject(List: TStringList; Index: Integer; S: _PCHAR); stdcall;
procedure TStringList_Delete(List: TStringList; Index: Integer); stdcall;
procedure TStringList_Clear(List: TStringList); stdcall;
//------------------------------------------------------------------------------
function TMemoryStream_Create(): TMemoryStream; stdcall;
procedure TMemoryStream_Free(Stream: TMemoryStream); stdcall;
function TMemoryStream_Read(Stream: TMemoryStream; Buffer: _PCHAR; Count: Longint): Longint; stdcall;
function TMemoryStream_Write(Stream: TMemoryStream; Buffer: _PCHAR; Count: Longint): Longint; stdcall;
function TMemoryStream_Seek(Stream: TMemoryStream; Offset: Longint; Origin: Word): Longint; stdcall;
function TMemoryStream_Size(Stream: TMemoryStream): Int64; stdcall;
function TMemoryStream_Memory(Stream: TMemoryStream): Pointer; stdcall;
function TMemoryStream_Position(Stream: TMemoryStream): Int64; stdcall;
procedure TMemoryStream_Clear(Stream: TMemoryStream); stdcall;
//------------------------------------------------------------------------------
//TBaseObject
function TBaseObject_sMapName(BaseObject: TBaseObject): _PCHAR; stdcall; //地图名称
function TBaseObject_sCharName(BaseObject: TBaseObject): _PCHAR; stdcall; //名称
function TBaseObject_nCurrX(BaseObject: TBaseObject): PInteger; stdcall; //坐标X
function TBaseObject_nCurrY(BaseObject: TBaseObject): PInteger; stdcall; //坐标Y
function TBaseObject_btDirection(BaseObject: TBaseObject): PByte; stdcall; //方向
function TBaseObject_btGender(BaseObject: TBaseObject): PByte; stdcall; //性别
function TBaseObject_btHair(BaseObject: TBaseObject): PByte; stdcall; //发型
function TBaseObject_btJob(BaseObject: TBaseObject): PByte; stdcall; //职业
function TBaseObject_btPermission(BaseObject: TBaseObject): PByte; stdcall; //  人物权限等级
function TBaseObject_boDeath(BaseObject: TBaseObject): PBoolean; stdcall; //是否死亡
function TBaseObject_boGhost(BaseObject: TBaseObject): PBoolean; stdcall;
function TBaseObject_Ability(BaseObject: TBaseObject): _LPTABILITY; stdcall;
function TBaseObject_WAbility(BaseObject: TBaseObject): _LPTABILITY; stdcall;
function TBaseObject_nCharStatus(BaseObject: TBaseObject): PInteger; stdcall;
function TBaseObject_sHomeMap(BaseObject: TBaseObject): _PCHAR; stdcall; //回城地图
function TBaseObject_nHomeX(BaseObject: TBaseObject): PInteger; stdcall; //回城坐标X
function TBaseObject_nHomeY(BaseObject: TBaseObject): PInteger; stdcall; //回城坐标Y
function TBaseObject_wAppr(BaseObject: TBaseObject): Word; stdcall;
function TBaseObject_btRaceServer(BaseObject: TBaseObject): Byte; stdcall; //角色类型
function TBaseObject_btRaceImg(BaseObject: TBaseObject): Byte; stdcall; //角色外形
function TBaseObject_btAttatckMode(BaseObject: TBaseObject): PByte; stdcall; //攻击模式
function TBaseObject_nViewRange(BaseObject: TBaseObject): PInteger; stdcall; //可视范围大小
function TBaseObject_SlaveList(BaseObject: TBaseObject): TList; stdcall; //宝宝列表
function TBaseObject_Master(BaseObject: TBaseObject): pTBaseObject; stdcall; //主人
function TBaseObject_PEnvir(BaseObject: TBaseObject): pTEnvirnoment; stdcall; //地图
function TBaseObject_TargetCret(BaseObject: TBaseObject): pTBaseObject; stdcall; //正在攻击的目标
function TBaseObject_LastHiter(BaseObject: TBaseObject): pTBaseObject; stdcall;
function TBaseObject_ExpHitter(BaseObject: TBaseObject): pTBaseObject; stdcall;
function TBaseObject_Pointer(BaseObject: TBaseObject): TList; stdcall;

function TBaseObject_nHealthRecover(BaseObject: TBaseObject): PShortInt; stdcall; //HP恢复速度 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TBaseObject_nSpellRecover(BaseObject: TBaseObject): PShortInt; stdcall; //MP恢复速度 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TBaseObject_btAntiPoison(BaseObject: TBaseObject): PByte; stdcall; //毒躲避 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TBaseObject_nPoisonRecover(BaseObject: TBaseObject): PShortInt; stdcall; //中毒恢复 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TBaseObject_nAntiMagic(BaseObject: TBaseObject): PShortInt; stdcall; //魔法躲避 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TBaseObject_nLuck(BaseObject: TBaseObject): PInteger; stdcall; // 人物的幸运值Luck 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TBaseObject_nHitSpeed(BaseObject: TBaseObject): PShortInt; stdcall; //攻击速度 在HookStopRecalcAbilitys中修改，其他地方修改无效

procedure TBaseObject_SendMsg(AObject, BaseObject: TBaseObject; wIdent: Word; wParam, nParam1, nParam2, nParam3: _INTEGER; sMsg: _PCHAR); stdcall;
procedure TBaseObject_SendDelayMsg(AObject, BaseObject: TBaseObject; wIdent: Word; wParam, lParam1, lParam2, lParam3: _INTEGER; sMsg: _PCHAR; dwDelay: LongWord); stdcall;
procedure TBaseObject_SendRefMsg(BaseObject: TBaseObject; wIdent: Word; wParam, nParam1, nParam2, nParam3: _INTEGER; sMsg: _PCHAR); stdcall;
procedure TBaseObject_SendUpdateMsg(AObject, BaseObject: TBaseObject; wIdent: Word; wParam, lParam1, lParam2, lParam3: _INTEGER; sMsg: _PCHAR); stdcall;
procedure TBaseObject_SysMsg(BaseObject: TBaseObject; sMsg: _PCHAR; FColor, BColor: Byte; MsgType: TMsgType); stdcall;
function TBaseObject_IsEnoughBag(BaseObject: TBaseObject): Boolean; stdcall;
function TBaseObject_InSafeZone(BaseObject: TBaseObject): Boolean; stdcall;
function TBaseObject_InSafeZoneA(BaseObject: TBaseObject; Envir: TEnvirnoment; nX, nY: Integer): Boolean; stdcall;
procedure TBaseObject_HealthSpellChanged(BaseObject: TBaseObject); stdcall;
procedure TBaseObject_DamageHealth(BaseObject: TBaseObject; nDamage: Integer); stdcall;
procedure TBaseObject_HasLevelUp(BaseObject: TBaseObject; nLevel: Integer); stdcall;
function TBaseObject_GetPoseCreate(BaseObject: TBaseObject): TBaseObject; stdcall;
function TBaseObject_CharPushed(BaseObject: TBaseObject; nDir, nPushCount: Integer): Integer; stdcall;
function TBaseObject_GetBackDir(BaseObject: TBaseObject; nDir: Integer): Integer; stdcall;
function TBaseObject_GetMapBaseObjects(BaseObject: TBaseObject; tEnvir: TEnvirnoment; nX, nY: Integer; nRage: Integer; rList: TList): Boolean; stdcall;

procedure TBaseObject_FeatureChanged(BaseObject: TBaseObject); stdcall;
procedure TBaseObject_TrainSkill(BaseObject: TBaseObject; UserMagic: _LPTUSERMAGIC; nTranPoint: Integer); stdcall;
function TBaseObject_CheckMagicLevelup(BaseObject: TBaseObject; UserMagic: _LPTUSERMAGIC): Boolean; stdcall;
function TBaseObject_AddItemToBag(BaseObject: TBaseObject; UserItem: _LPTUSERITEM): Boolean; stdcall; //引擎内部已经重新申请内存，这里UserItem申请的内存自己处理
function TBaseObject_IsProtectTarget(AObject, BaseObject: TBaseObject): Boolean; stdcall;
function TBaseObject_IsAttackTarget(AObject, BaseObject: TBaseObject): Boolean; stdcall;
function TBaseObject_IsProperTarget(AObject, BaseObject: TBaseObject): Boolean; stdcall;
function TBaseObject_IsProperFriend(AObject, BaseObject: TBaseObject): Boolean; stdcall;
procedure TBaseObject_SetTargetCreat(AObject, BaseObject: TBaseObject); stdcall; //设置攻击目标
procedure TBaseObject_DelTargetCreat(BaseObject: TBaseObject); stdcall; //删除攻击目标

function TBaseObject_ItemList(BaseObject: TBaseObject): TList; stdcall; //人物背包
function TBaseObject_DelBagItemA(BaseObject: TBaseObject; Index: Integer): Boolean; stdcall; //删除指定行并且释放内存
function TBaseObject_DelBagItemB(BaseObject: TBaseObject; nItemIndex: Integer; sItemName: _PCHAR): Boolean; stdcall; //删除指定物品序号行并且释放内存
function TBaseObject_DelBagItemC(BaseObject: TBaseObject; UserItem: _LPTUSERITEM): Boolean; stdcall; //删除指定物品行并且释放内存

procedure TBaseObject_MakeGhost(BaseObject: TBaseObject); stdcall;
procedure TBaseObject_RecalcLevelAbilitys(BaseObject: TBaseObject); stdcall;
procedure TBaseObject_RecalcAbilitys(BaseObject: TBaseObject); stdcall;
function TBaseObject_RecalcBagWeight(BaseObject: TBaseObject): Integer; stdcall;
function TBaseObject_GetLevelExp(BaseObject: TBaseObject; nLevel: Integer): LongWord; stdcall;

function TBaseObject_boDummyObject(BaseObject: TBaseObject): Boolean; stdcall; //是否是假人
function TBaseObject_boISNGMonster(BaseObject: TBaseObject): Boolean; stdcall; //是否是内功怪
function TBaseObject_ActorIcons(BaseObject: TBaseObject): _LPTACTORICONARRAY; stdcall; //顶戴花翎
procedure TBaseObject_RefShowName(BaseObject: TBaseObject); stdcall; //刷新名称
procedure TBaseObject_RefUseIcons(BaseObject: TBaseObject); stdcall; //刷新顶戴花翎
procedure TBaseObject_RefUseEffects(BaseObject: TBaseObject); stdcall; //刷新效果
procedure TBaseObject_SpaceMove(BaseObject: TBaseObject; sMapName: _PCHAR; nX, nY: Integer; nInt: Integer); stdcall;
procedure TBaseObject_MapRandomMove(BaseObject: TBaseObject; sMapName: _PCHAR; nInt: Integer); stdcall;
procedure TBaseObject_IncHealthSpell(BaseObject: TBaseObject; nHP, nMP: Integer); stdcall;
procedure TBaseObject_StruckDamage(BaseObject: TBaseObject; nDamage: Integer); stdcall;
procedure TBaseObject_ReAlive(BaseObject: TBaseObject); stdcall;
function TBaseObject_CretInNearXY(AObject, TargeTBaseObject: TBaseObject; nX, nY, nRange: Integer): Boolean; stdcall;
procedure TBaseObject_DamageSpell(BaseObject: TBaseObject; nSpellPoint: Integer); stdcall;
function TBaseObject_GetHitStruckDamage(AObject, Target: TBaseObject; nDamage: Integer): Integer; stdcall;
function TBaseObject_GetMagStruckDamage(AObject, BaseObject: TBaseObject; nDamage: Integer): Integer; stdcall;
procedure TBaseObject_WeightChanged(BaseObject: TBaseObject); stdcall;
function TBaseObject_CanMove(BaseObject: TBaseObject): Boolean; stdcall;
function TBaseObject_CanRun(BaseObject: TBaseObject; nCurrX, nCurrY, nX, nY: Integer; boFlag: Boolean): Boolean; stdcall;
procedure TBaseObject_TurnTo(BaseObject: TBaseObject; nDir: Integer); stdcall;
function TBaseObject_WalkTo(BaseObject: TBaseObject; btDir: Byte; boFlag: Boolean): Boolean; stdcall;
function TBaseObject_RunTo(BaseObject: TBaseObject; btDir: Byte; boFlag: Boolean; nDestX, nDestY: Integer): Boolean; stdcall;
//------------------------------------------------------------------------------
//TSmartObject继承TBaseObject。TPlayObject THeroObject继承 TSmartObject
function TSmartObject_MagicList(SmartObject: TSmartObject): TList; stdcall; //技能表
function TSmartObject_UseItems(SmartObject: TSmartObject): _LPTUSEITEMS; stdcall; //身上装备
function TSmartObject_nPkPoint(SmartObject: TSmartObject): Integer; stdcall; // 人物的PK值
function TSmartObject_boTeleport(SmartObject: TSmartObject): PBoolean; stdcall; //  传送戒指(Byte)   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boParalysis(SmartObject: TSmartObject): PBoolean; stdcall; //  麻痹戒指(Byte)  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boUnParalysis(SmartObject: TSmartObject): PBoolean; stdcall; //防麻痹             在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boRevival(SmartObject: TSmartObject): PBoolean; stdcall; //  复活戒指(Byte)  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boUnRevival(SmartObject: TSmartObject): PBoolean; stdcall; //防复活         在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boFlameRing(SmartObject: TSmartObject): PBoolean; stdcall; // 火焰戒指      在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boRecoveryRing(SmartObject: TSmartObject): PBoolean; stdcall; //  治愈戒指  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boAngryRing(SmartObject: TSmartObject): PBoolean; stdcall; //  未知戒指      在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boMagicShield(SmartObject: TSmartObject): PBoolean; stdcall; // 护身戒指   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boUnMagicShield(SmartObject: TSmartObject): PBoolean; stdcall; //防护身     在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boMuscleRing(SmartObject: TSmartObject): PBoolean; stdcall; //  活力戒指   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boFastTrain(SmartObject: TSmartObject): PBoolean; stdcall; // 技巧项链    在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boProbeNecklace(SmartObject: TSmartObject): PBoolean; stdcall; //  探测项链  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boGuildMove(SmartObject: TSmartObject): PBoolean; stdcall; //行会传送   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_bopirit(SmartObject: TSmartObject): PBoolean; stdcall; //祈祷          在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boSupermanItem(SmartObject: TSmartObject): PBoolean; stdcall; //不死戒指    在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boExpItem(SmartObject: TSmartObject): PBoolean; stdcall; //在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boPowerItem(SmartObject: TSmartObject): PBoolean; stdcall; // 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_rExpItem(SmartObject: TSmartObject): PDouble; stdcall; // 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_rPowerItem(SmartObject: TSmartObject): PDouble; stdcall; // 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boNoDropItem(SmartObject: TSmartObject): PBoolean; stdcall; // 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boNoDropUseItem(SmartObject: TSmartObject): PBoolean; stdcall; // 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_dwPKDieLostExp(SmartObject: TSmartObject): PLongWord; stdcall; //PK 死亡掉经验，不够经验就掉等级      在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_nPKDieLostLevel(SmartObject: TSmartObject): PInteger; stdcall; //PK 死亡掉等级    在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boMysteriousMan(SmartObject: TSmartObject): PBoolean; stdcall; //蒙面人        在HookStopRecalcAbilitys中修改，其他地方修改无效

procedure TSmartObject_IncPkPoint(SmartObject: TSmartObject; nPoint: Integer); stdcall; //增加PK值
procedure TSmartObject_DecPKPoint(SmartObject: TSmartObject; nPoint: Integer); stdcall; //减少PK值
function TSmartObject_PKLevel(SmartObject: TSmartObject): Integer; stdcall; //PK等级
procedure TSmartObject_RepairAllItem(SmartObject: TSmartObject); stdcall;
procedure TSmartObject_LoadConfigFile(SmartObject: TSmartObject; FileName: _PCHAR); stdcall; //加载机器人配置文件
function TSmartObject_StartPickUpItem(SmartObject: TSmartObject): Boolean; stdcall;
function TSmartObject_AllowUseMagic(SmartObject: TSmartObject; wMagIdx: Word): Boolean; stdcall;
function TSmartObject_RunToNext(SmartObject: TSmartObject; nX, nY: Integer): Boolean; stdcall;
function TSmartObject_WalkToNext(SmartObject: TSmartObject; nX, nY: Integer): Boolean; stdcall;
function TSmartObject_GotoNext(SmartObject: TSmartObject; nX, nY: Integer; boRun: Boolean): Boolean; stdcall;
function TSmartObject_GotoNextA(SmartObject: TSmartObject; nX, nY: Integer; boRun: Boolean): Boolean; stdcall;
function TSmartObject_SelectMagic(SmartObject: TSmartObject): Integer; stdcall; //选择魔法
function TSmartObject_AttackTarget(SmartObject: TSmartObject; wMagicID: Word; dwAttackTime: LongWord): Boolean; stdcall;
//------------------------------------------------------------------------------
//TPlayObject开头的是人物相关函数
function TPlayObject_boSuperMan(PlayObject: TPlayObject): Boolean; stdcall; // 无敌模式
function TPlayObject_boAdminMode(PlayObject: TPlayObject): Boolean; stdcall; //管理模式
function TPlayObject_sUserID(PlayObject: TPlayObject): _PCHAR; stdcall; //   登录帐号名
function TPlayObject_sIPaddr(PlayObject: TPlayObject): _PCHAR; stdcall; //   人物IP地址
function TPlayObject_boNewHuman(PlayObject: TPlayObject): Boolean; stdcall; //是否是新人
function TPlayObject_boHearWhisper(PlayObject: TPlayObject): PBoolean; stdcall; //0x27C  允许私聊
function TPlayObject_boBanShout(PlayObject: TPlayObject): PBoolean; stdcall; //0x27D  允许群聊
function TPlayObject_boBanGuildChat(PlayObject: TPlayObject): PBoolean; stdcall; //0x27E  拒绝行会聊天
function TPlayObject_boAllowDeal(PlayObject: TPlayObject): PBoolean; stdcall; //0x27F  是不允许交易
function TPlayObject_boAllowChallenge(PlayObject: TPlayObject): PBoolean; stdcall; //0x27F  是不允许挑战
function TPlayObject_BlockWhisperList(PlayObject: TPlayObject): TStringList; stdcall; //禁止私聊人员列表
function TPlayObject_boAllowGroupReCall(PlayObject: TPlayObject): PBoolean; stdcall; //允许天地合一
function TPlayObject_boAllowGroup(PlayObject: TPlayObject): PBoolean; stdcall; //0xB0  允许组队
function TPlayObject_boAllowGuild(PlayObject: TPlayObject): PBoolean; stdcall; //0xB1  允许加入行会
function TPlayObject_boCanDearRecall(PlayObject: TPlayObject): PBoolean; stdcall; //是否允许夫妻传送
function TPlayObject_boCanMasterRecall(PlayObject: TPlayObject): PBoolean; stdcall; //是否允许师徒传送
function TPlayObject_StorageItemList(PlayObject: TPlayObject): TList; stdcall; //仓库
function TPlayObject_GroupOwner(PlayObject: TPlayObject): pTPlayObject; stdcall; //0x274
function TPlayObject_GroupMembers(PlayObject: TPlayObject): TStringList; stdcall; //0x278  组成员
function TPlayObject_sDearName(PlayObject: TPlayObject): _PCHAR; stdcall; //配偶名称
function TPlayObject_DearHuman(PlayObject: TPlayObject): pTPlayObject; stdcall;
function TPlayObject_sMasterName(PlayObject: TPlayObject): _PCHAR; stdcall; //师徒名称
function TPlayObject_MasterHuman(PlayObject: TPlayObject): pTPlayObject; stdcall;
function TPlayObject_MasterList(PlayObject: TPlayObject): TList; stdcall;
function TPlayObject_boMaster(PlayObject: TPlayObject): Boolean; stdcall;
function TPlayObject_btReLevel(PlayObject: TPlayObject): PByte; stdcall; //转生等级
function TPlayObject_boShopStall(PlayObject: TPlayObject): Boolean; stdcall; //是否在摆摊
function TPlayObject_boStorageHero(PlayObject: TPlayObject): Boolean; stdcall; //英雄是否寄存
function TPlayObject_boStorageDeputyHero(PlayObject: TPlayObject): Boolean; stdcall; //副将英雄是否寄存
function TPlayObject_MyHero(PlayObject: TPlayObject): pTBaseObject; stdcall;
function TPlayObject_boFixedHero(PlayObject: TPlayObject): Boolean; stdcall; //是否评定主副英雄
function TPlayObject_sHeroName(PlayObject: TPlayObject): _PCHAR; stdcall; //主英雄名
function TPlayObject_sDeputyHeroName(PlayObject: TPlayObject): _PCHAR; stdcall; //副将英雄名字
function TPlayObject_btDeputyHeroJob(PlayObject: TPlayObject): Byte; stdcall; //副将英雄出生职业
function TPlayObject_nVal(PlayObject: TPlayObject): PInteger; stdcall; //P变量0~9
function TPlayObject_nDyVal(PlayObject: TPlayObject): PInteger; stdcall; //D变量0~9
function TPlayObject_nMVal(PlayObject: TPlayObject): PInteger; stdcall; //M变量0~99
function TPlayObject_nNVal(PlayObject: TPlayObject): PInteger; stdcall; //N变量0~99
function TPlayObject_GetSVal(PlayObject: TPlayObject; Index: Integer): _PCHAR; stdcall; //S变量0~99
procedure TPlayObject_SetSVal(PlayObject: TPlayObject; Index: Integer; Value: _PCHAR); stdcall; //S变量0~99

function TPlayObject_MyGuild(PlayObject: TPlayObject): pTGuild; stdcall; //我的行会
function TPlayObject_nGuildRankNo(PlayObject: TPlayObject): Integer; stdcall;
function TPlayObject_sGuildRankName(PlayObject: TPlayObject): _PCHAR; stdcall;
function TPlayObject_boOffLine(PlayObject: TPlayObject): Boolean; stdcall; //是否是离线挂机人物
function TPlayObject_nGold(PlayObject: TPlayObject): Integer; stdcall;
function TPlayObject_nGamePoint(PlayObject: TPlayObject): Integer; stdcall;
function TPlayObject_nGameGold(PlayObject: TPlayObject): Integer; stdcall;
function TPlayObject_nGameGird(PlayObject: TPlayObject): Integer; stdcall;
function TPlayObject_nGameDiamond(PlayObject: TPlayObject): Integer; stdcall;
function TPlayObject_nGameGlory(PlayObject: TPlayObject): Integer; stdcall;
function TPlayObject_IncGold(PlayObject: TPlayObject; nGold: Integer): Boolean; stdcall;
function TPlayObject_DecGold(PlayObject: TPlayObject; nGold: Integer): Boolean; stdcall;
procedure TPlayObject_IncGamePoint(PlayObject: TPlayObject; nGamePoint: Integer); stdcall;
procedure TPlayObject_DecGamePoint(PlayObject: TPlayObject; nGamePoint: Integer); stdcall;
procedure TPlayObject_IncGameGold(PlayObject: TPlayObject; nGameGold: Integer); stdcall;
procedure TPlayObject_DecGameGold(PlayObject: TPlayObject; nGameGold: Integer); stdcall;
procedure TPlayObject_IncGameGird(PlayObject: TPlayObject; nPoint: Integer); stdcall;
procedure TPlayObject_DecGameGird(PlayObject: TPlayObject; nPoint: Integer); stdcall;
procedure TPlayObject_IncGameDiamond(PlayObject: TPlayObject; nPoint: Integer); stdcall;
procedure TPlayObject_DecGameDiamond(PlayObject: TPlayObject; nPoint: Integer); stdcall;
procedure TPlayObject_IncGameGlory(PlayObject: TPlayObject; nPoint: Integer); stdcall;
procedure TPlayObject_DecGameGlory(PlayObject: TPlayObject; nPoint: Integer); stdcall;
procedure TPlayObject_IncExp(PlayObject: TPlayObject; dwExp: LongWord); stdcall;

procedure TPlayObject_SendGoldInfo(PlayObject: TPlayObject; boSendName: Boolean); stdcall; //GameGold  GamePoint
procedure TPlayObject_SendNewGamePointInfo(PlayObject: TPlayObject; boSendName: Boolean); stdcall; //GameDiamond GameGird
procedure TPlayObject_SendGameGlory(PlayObject: TPlayObject); stdcall; //荣誉

procedure TPlayObject_MoveToHome(PlayObject: TPlayObject); stdcall; //回城
procedure TPlayObject_SendSocket(PlayObject: TPlayObject; DefMsg: _LPTDEFAULTMESSAGE; sMsg: _PCHAR); stdcall; //发送数据
procedure TPlayObject_SendDefMessage(PlayObject: TPlayObject; wIdent: Word; nRecog: Int64; nParam, nTag, nSeries: Word; sMsg: _PCHAR); stdcall; //发送数据
procedure TPlayObject_SendAddItem(PlayObject: TPlayObject; UserItem: _LPTUSERITEM); stdcall;
procedure TPlayObject_SendDelItems(PlayObject: TPlayObject; UserItem: _LPTUSERITEM); stdcall;
procedure TPlayObject_SendUpdateItem(PlayObject: TPlayObject; UserItem: _LPTUSERITEM); stdcall;
procedure TPlayObject_SendAddMagic(PlayObject: TPlayObject; UserMagic: _LPTUSERMAGIC); stdcall;
procedure TPlayObject_SendDelMagic(PlayObject: TPlayObject; UserMagic: _LPTUSERMAGIC); stdcall;
procedure TPlayObject_SendEffectImageList(PlayObject: TPlayObject); stdcall; //发送Wil列表
procedure TPlayObject_SendSpecialCmdList(PlayObject: TPlayObject); stdcall; //发送特殊命令
procedure TPlayObject_SendServerConfig(PlayObject: TPlayObject); stdcall; //发送内挂配置
procedure TPlayObject_SendUseItems(PlayObject: TPlayObject); stdcall; //发送身上装备
procedure TPlayObject_SendUseMagic(PlayObject: TPlayObject) stdcall; //发送技能列表
procedure TPlayObject_SendBagItems(PlayObject: TPlayObject); stdcall;

procedure TPlayObject_SendMoveMsg(PlayObject: TPlayObject; sMsg: _PCHAR; btFColor, btBColor: Byte; nX, nY: Word; nMoveCount: Integer); stdcall;
procedure TPlayObject_SendCenterMsg(PlayObject: TPlayObject; sMsg: _PCHAR; btFColor, btBColor: Byte; nTime: Integer); stdcall;
procedure TPlayObject_SendTopBroadCastMsg(PlayObject: TPlayObject; sMsg: _PCHAR; btFColor, btBColor: Byte; nTime: Integer; MsgType: TMsgType); stdcall;
function TPlayObject_nMoveSpeed(PlayObject: TPlayObject): PSmallInt; stdcall; //行走速度    -10 ~ +10
function TPlayObject_nAttackSpeed(PlayObject: TPlayObject): PSmallInt; stdcall; //攻击速度  -10 ~ +10
function TPlayObject_nSpellSpeed(PlayObject: TPlayObject): PSmallInt; stdcall; //魔法速度  -10 ~ +10
function TPlayObject_dwChangeSpeedTimeTicks(PlayObject: TPlayObject; nIndex: Integer): PLongWord; stdcall; //改变速度的有效时间 nIndex在0到2之间
procedure TPlayObject_RefGameSpeed(PlayObject: TPlayObject); stdcall; //刷新游戏速度
procedure TPlayObject_ClientHeroLogOn(PlayObject: TPlayObject; boIsDeputyHero: Boolean; btDeputyHeroJob: Byte); stdcall; //召唤英雄
function TPlayObject_CheckTakeOnItems(PlayObject: TPlayObject; nWhere: Integer; var StdItem: _TSTDITEM): Boolean; stdcall;
function TPlayObject_Pointer(PlayObject: TPlayObject): TList; stdcall;
//------------------------------------------------------------------------------
function TDummyObject_boStart(DummyObject: TPlayObject): PBoolean; stdcall; //是否开始挂机
procedure TDummyObject_Start(DummyObject: TPlayObject); //开始挂机
procedure TDummyObject_Stop(DummyObject: TPlayObject); //停止挂机
//------------------------------------------------------------------------------
//THeroObject开头的是英雄相关函数
function THeroObject_rLoyalPoint(HeroObject: THeroObject): PDouble; stdcall; //忠诚度
function THeroObject_boIsDeputy(HeroObject: THeroObject): Boolean; stdcall; //是否是副将英雄
procedure THeroObject_IncExp(HeroObject: THeroObject; dwExp: LongWord); stdcall;
procedure THeroObject_SendUseitems(HeroObject: THeroObject); stdcall;
procedure THeroObject_SendAddItem(HeroObject: THeroObject; UserItem: _LPTUSERITEM); stdcall;
procedure THeroObject_SendDelItems(HeroObject: THeroObject; UserItem: _LPTUSERITEM); stdcall;
procedure THeroObject_SendUpdateItem(HeroObject: THeroObject; UserItem: _LPTUSERITEM); stdcall;
procedure THeroObject_SendUseMagic(HeroObject: THeroObject); stdcall;
procedure THeroObject_SendAddMagic(HeroObject: THeroObject; UserMagic: _LPTUSERMAGIC); stdcall;
procedure THeroObject_SendDelMagic(HeroObject: THeroObject; UserMagic: _LPTUSERMAGIC); stdcall;
procedure THeroObject_LogOut(HeroObject: THeroObject); stdcall;
procedure THeroObject_RestHero(HeroObject: THeroObject); stdcall;
function THeroObject_Pointer(HeroObject: THeroObject): TList; stdcall;
//------------------------------------------------------------------------------
function TNormNpc_Create(sCharName, sMapName, sScript: _PCHAR; X, Y: Integer; wAppr: Word; boIsHide: Boolean): TNormNpc; stdcall; //创建NPC，该NPC由引擎自动释放
function TNormNpc_boIsHide(NormNpc: TNormNpc): PBoolean; stdcall;
procedure TNormNpc_ClearScript(NormNpc: TNormNpc); stdcall;
procedure TNormNpc_LoadNpcScript(NormNpc: TNormNpc); stdcall;
function TNormNpc_sFilePath(NormNpc: TNormNpc): _PCHAR; stdcall;
function TNormNpc_sPath(NormNpc: TNormNpc): _PCHAR; stdcall;
function TNormNpc_GetLineVariableText(NPC: TNormNpc; PlayObject: TPlayObject; sMsg: _PCHAR): _PCHAR; stdcall;
procedure TNormNpc_GotoLable(NPC: TNormNpc; AObject: TPlayObject; sLabel: _PCHAR; boExtJmp: Boolean); stdcall;
procedure TNormNpc_SendMsgToUser(NPC: TNormNpc; PlayObject: TPlayObject; sMsg: _PCHAR); stdcall;
procedure TNormNpc_MessageBox(NPC: TNormNpc; PlayObject: TPlayObject; sMsg: _PCHAR); stdcall;
function TNormNpc_GetVarValue(NPC: TNormNpc; PlayObject: TPlayObject; sVarName: _PCHAR; var sValue: _PCHAR; var nValue: Integer): Boolean; stdcall;
function TNormNpc_SetVarValue(NPC: TNormNpc; PlayObject: TPlayObject; sVarName: _PCHAR; sValue: _PCHAR; nValue: Integer): Boolean; stdcall;
function TNormNpc_GetDynamicVarValue(NPC: TNormNpc; PlayObject: TPlayObject; sVarName: _PCHAR; var sValue: _PCHAR; var nValue: Integer): Boolean; stdcall;
function TNormNpc_SetDynamicVarValue(NPC: TNormNpc; PlayObject: TPlayObject; sVarName: _PCHAR; sValue: _PCHAR; nValue: Integer): Boolean; stdcall;
//------------------------------------------------------------------------------
function TUserEngine_PlayObjectList: TStringList; stdcall;
function TUserEngine_HeroObjectList: TStringList; stdcall;
function TUserEngine_MerchantList: TList; stdcall;
function TUserEngine_QuestNPCList: TList; stdcall;
function TUserEngine_MagicList: TList; stdcall;
function TUserEngine_StdItemList: TList; stdcall;

function TUserEngine_ManageNPC: TNormNpc; stdcall;
function TUserEngine_RobotNPC: TNormNpc; stdcall;
function TUserEngine_FunctionNPC: TMerchant; stdcall;
function TUserEngine_MissionNPC: TMerchant; stdcall;

function TUserEngine_FindMagicA(sMagicName: _PCHAR): _LPTMAGIC; stdcall;
function TUserEngine_FindMagicB(nMagIdx: Integer): _LPTMAGIC; stdcall;
function TUserEngine_FindHeroMagicA(nMagIdx: Integer): _LPTMAGIC; stdcall;
function TUserEngine_FindHeroMagicB(sMagicName: _PCHAR): _LPTMAGIC; stdcall;

function TUserEngine_FindMagicC(sMagicName: _PCHAR; MagicAttr: TMagicAttr): _LPTMAGIC; stdcall;
function TUserEngine_FindMagicD(nMagIdx: Integer; MagicAttr: TMagicAttr): _LPTMAGIC; stdcall;
function TUserEngine_FindHeroMagicC(nMagIdx: Integer; MagicAttr: TMagicAttr): _LPTMAGIC; stdcall;
function TUserEngine_FindHeroMagicD(sMagicName: _PCHAR; MagicAttr: TMagicAttr): _LPTMAGIC; stdcall;

procedure TUserEngine_SendBroadCastMsg(sMsg: _PCHAR; FColor, BColor: Integer; MsgType: TMsgType); stdcall;
procedure TUserEngine_SendBroadCastMsgExt(sMsg: _PCHAR; MsgType: TMsgType); stdcall;
procedure TUserEngine_SendTopBroadCastMsg(sMsg: _PCHAR; FColor, BColor: Integer; nTime: Integer; MsgType: TMsgType); stdcall;
procedure TUserEngine_SendServerConfig(); stdcall;
procedure TUserEngine_SendMoveMsg(sMsg: _PCHAR; btFColor, btBColor: Byte; nY, nMoveCount: Integer); stdcall;
procedure TUserEngine_SendCenterMsg(sMsg: _PCHAR; btFColor, btBColor: Byte; nTime: Integer); stdcall;

function TUserEngine_GetStdItemA(nItemIdx: Integer): _LPTSTDITEM; stdcall;
function TUserEngine_GetStdItemB(sItemName: _PCHAR): _LPTSTDITEM; stdcall;
function TUserEngine_GetStdItemWeight(nItemIdx: Integer): Integer; stdcall;
function TUserEngine_GetStdItemName(nItemIdx: Integer): _PCHAR; stdcall;
function TUserEngine_GetStdItemIdx(sItemName: _PCHAR): Integer; stdcall;

function TUserEngine_GetPlayObjectA(sName: _PCHAR): TPlayObject; stdcall;
function TUserEngine_GetPlayObjectB(PlayObject: TObject): TPlayObject; stdcall;
function TUserEngine_GetPlayObjectEx(sAccount, sName: _PCHAR): TPlayObject; stdcall;
function TUserEngine_GetPlayObjectOfAccount(sAccount: _PCHAR): TPlayObject; stdcall;

function TUserEngine_GetOfflinePlayObject(sAccount: _PCHAR): TPlayObject; stdcall;
procedure TUserEngine_KickPlayObjectEx(sAccount, sName: _PCHAR); stdcall;

function TUserEngine_GetHeroObject(sName: _PCHAR): THeroObject; stdcall;
function TUserEngine_GetHeroObjectEx(sAccount, sName: _PCHAR): THeroObject; stdcall;
procedure TUserEngine_KickHeroObjectEx(sAccount, sName: _PCHAR); stdcall;

function TUserEngine_FindMerchant(Merchant: TObject): TMerchant; stdcall;
function TUserEngine_FindNPC(NPC: TObject): TNormNpc; stdcall;
function TUserEngine_CopyToUserItemFromName(sItemName: _PCHAR; Item: _LPTUSERITEM): Boolean; stdcall;

procedure TUserEngine_RandomUpgradeItem(Item: _LPTUSERITEM); stdcall;
procedure TUserEngine_GetUnknowItemValue(Item: _LPTUSERITEM); stdcall;
procedure TUserEngine_RandomItemNewAbil(Item: _LPTUSERITEM); stdcall; //元素

function TUserEngine_GetDummyObjectCount(): Integer; stdcall;
function TUserEngine_GetOfflineCount(): Integer; stdcall;
function TUserEngine_GetReallyCount(): Integer; stdcall;
//------------------------------------------------------------------------------
function TEnvirnoment_sMapName(Envir: TEnvirnoment): _PCHAR; stdcall;
function TEnvirnoment_sMapDesc(Envir: TEnvirnoment): _PCHAR; stdcall;
function TEnvirnoment_nWidth(Envir: TEnvirnoment): Integer; stdcall;
function TEnvirnoment_nHeight(Envir: TEnvirnoment): Integer; stdcall;
function TEnvirnoment_CanWalk(Envir: TEnvirnoment; nX, nY: Integer; boFlag: Boolean): Boolean; stdcall;
function TEnvirnoment_CanWalkExA(Envir: TEnvirnoment; nX, nY: Integer; boFlag: Boolean): Boolean; stdcall;
function TEnvirnoment_CanWalkExB(Envir: TEnvirnoment; WalkObject: TBaseObject; nX, nY: Integer; boFlag: Boolean): Boolean; stdcall;
procedure TEnvirnoment_MapEffect(Envir: TEnvirnoment; nX, nY, nFileIndex, nImageOffset, nImageCount, nLoopCount, nSpeedTime: Integer; boBlend: Boolean; btLight: Byte); stdcall; //地图播放效果
function TEnvirnoment_GetRangeBaseObject(Envir: TEnvirnoment; nX, nY, nRage: Integer; boFlag: Boolean; BaseObjectList: TList): Integer;
//------------------------------------------------------------------------------
function TMapManager_Find(sMapName: _PCHAR): TEnvirnoment;
//------------------------------------------------------------------------------
function TGuild_GetMemberCount(Guild: TGuild): Integer; stdcall;
function TGuild_GetMemgerIsFull(Guild: TGuild): Boolean; stdcall;
function TGuild_IsMember(Guild: TGuild; sName: _PCHAR): Boolean; stdcall;
function TGuild_IsAllyGuild(AGuild, Guild: TGuild): Boolean; stdcall;
function TGuild_IsWarGuild(AGuild, Guild: TGuild): Boolean; stdcall;
procedure TGuild_SendGuildMsg(Guild: TGuild; sMsg: _PCHAR); stdcall;
function TGuild_GetRankName(Guild: TGuild; PlayObject: TPlayObject; var nRankNo: Integer): _PCHAR; stdcall;
function TGuild_DelMember(Guild: TGuild; sHumName: _PCHAR): Boolean; stdcall;
function TGuild_IsNotWarGuild(AGuild, Guild: TGuild): Boolean; stdcall;
function TGuild_AddMember(Guild: TGuild; PlayObject: TPlayObject): Boolean; stdcall;

function TGuildManager_MemberOfGuild(sName: _PCHAR): TGuild; stdcall;
function TGuildManager_AddGuild(sGuildName, sChief: _PCHAR): Boolean; stdcall;
function TGuildManager_FindGuild(sGuildName: _PCHAR): TGuild; stdcall;
function TGuildManager_DelGuild(sGuildName: _PCHAR): Boolean; stdcall;

//------------------------------------------------------------------------------
function TUserCastle_InCastleWarArea(Castle: TUserCastle; Envir: TEnvirnoment; nX, nY: Integer): Boolean; stdcall;
function TUserCastle_IsMember(Castle: TUserCastle; Cert: TBaseObject): Boolean; stdcall;
function TUserCastle_IsMasterGuild(Castle: TUserCastle; Guild: TGUild): Boolean; stdcall;
function TUserCastle_IsAttackGuild(Castle: TUserCastle; Guild: TGUild): Boolean; stdcall;
function TUserCastle_IsAttackAllyGuild(Castle: TUserCastle; Guild: TGUild): Boolean; stdcall;
function TUserCastle_IsDefenseGuild(Castle: TUserCastle; Guild: TGUild): Boolean; stdcall;
function TUserCastle_IsDefenseAllyGuild(Castle: TUserCastle; Guild: TGUild): Boolean; stdcall;
function TUserCastle_CanGetCastle(Castle: TUserCastle; Guild: TGUild): Boolean; stdcall;
procedure TUserCastle_GetCastle(Castle: TUserCastle; Guild: TGUild); stdcall;
function TUserCastle_AddAttackerInfo(Castle: TUserCastle; Guild: TGUild; nDay: Integer): Boolean; stdcall;
function TUserCastle_CheckInPalace(Castle: TUserCastle; nX, nY: Integer; Cert: TBaseObject): Boolean; stdcall;
function TCastleManager_Find(sCASTLENAME: _PCHAR): TUserCastle; stdcall;
function TCastleManager_GetCastle(nIndex: Integer): TUserCastle; stdcall;
function TCastleManager_InCastleWarAreaA(BaseObject: TBaseObject): TUserCastle; stdcall;
function TCastleManager_InCastleWarAreaB(Envir: TEnvirnoment; nX, nY: Integer): TUserCastle; stdcall;
function TCastleManager_IsCastleMember(BaseObject: TBaseObject): TUserCastle; stdcall;
function TCastleManager_IsCastlePalaceEnvir(Envir: TEnvirnoment): TUserCastle; stdcall;
function TCastleManager_IsCastleEnvir(Envir: TEnvirnoment): TUserCastle; stdcall;
function TCastleManager_FindCastle(Guild: TGUild): TUserCastle; stdcall;
//------------------------------------------------------------------------------
//---------------------引擎读取脚本检测命令时调用-----------------------------
function GetHookLoadQuestConditionCmd: TLoadScriptCmd; stdcall;
procedure SetHookLoadQuestConditionCmd(Value: TLoadScriptCmd); stdcall;
//---------------------引擎读取脚本操作命令时调用-----------------------------
function GetHookLoadQuestActionCmd: TLoadScriptCmd; stdcall;
procedure SetHookLoadQuestActionCmd(Value: TLoadScriptCmd); stdcall;
//---------------------引擎跳转脚本检测命令时调用-----------------------------
function GetHookQuestConditionProcess: TScriptProcess; stdcall;
procedure SetHookQuestConditionProcess(Value: TScriptProcess); stdcall;
//---------------------引擎跳转脚本操作命令时调用-----------------------------
function GetHookQuestActionProcess: TScriptProcess; stdcall;
procedure SetHookQuestActionProcess(Value: TScriptProcess); stdcall;
//---------------------引擎处理消息时调用-----------------------------
function GetHookBaseObjectOperateMessage: TObjectOperateMessage; stdcall;
procedure SetHookBaseObjectOperateMessage(Value: TObjectOperateMessage); stdcall;
//---------------------用户选择NPC标签时调用-----------------------------
function GetHookObjectUserSelect: TObjectUserSelect; stdcall;
procedure SetHookObjectUserSelect(Value: TObjectUserSelect); stdcall;
//---------------------用户输入命令时调用-----------------------------
function GetHookProcessUserCmd: TProcessUserCmd; stdcall;
procedure SetHookProcessUserCmd(Value: TProcessUserCmd); stdcall;
//---------------------角色移动时调用-----------------------------
function GetHookObjectWalkIndex: TObjectActionIndex; stdcall;
procedure SetHookObjectWalkIndex(Value: TObjectActionIndex); stdcall;
//---------------------角色被攻击时调用-----------------------------
function GetHookObjectStruck: TObjectActionXYD; stdcall;
procedure SetHookObjectStruck(Value: TObjectActionXYD); stdcall;
//---------------------角色被魔法攻击时调用-----------------------------
function GetHookObjectMagicStruck: TObjectActionXYDM; stdcall;
procedure SetHookObjectMagicStruck(Value: TObjectActionXYDM); stdcall;
//---------------------角色攻击时调用 返回新的攻击威力-----------------------------
function GetHookObjectAttack: TObjectActionXYDMEx; stdcall;
procedure SetHookObjectAttack(Value: TObjectActionXYDMEx); stdcall;
//---------------------角色魔法攻击时调用 返回新的攻击威力-----------------------------
function GetHookObjectMagicAttack: TObjectActionXYDMEx; stdcall;
procedure SetHookObjectMagicAttack(Value: TObjectActionXYDMEx); stdcall;
//---------------------人物运行时调用-----------------------------
function GetHookPlayObjectRun: TObjectAction; stdcall;
procedure SetHookPlayObjectRun(Value: TObjectAction); stdcall;
//---------------------人物登录时调用-----------------------------
function GetHookUserLogin1: TObjectAction; stdcall;
procedure SetHookUserLogin1(Value: TObjectAction); stdcall;
function GetHookUserLogin2: TObjectAction; stdcall;
procedure SetHookUserLogin2(Value: TObjectAction); stdcall;
function GetHookUserLogin3: TObjectAction; stdcall;
procedure SetHookUserLogin3(Value: TObjectAction); stdcall;
function GetHookUserLogin4: TObjectAction; stdcall;
procedure SetHookUserLogin4(Value: TObjectAction); stdcall;
//---------------------角色死亡时调用-----------------------------
function GetHookObjectDie: TObjectAction; stdcall;
procedure SetHookObjectDie(Value: TObjectAction); stdcall;
//---------------------角色释放前调用-----------------------------
function GetHookBaseObjectMakeGhost: TObjectAction; stdcall;
procedure SetHookBaseObjectMakeGhost(Value: TObjectAction); stdcall;
//---------------------TPlayObject类创建时调用-----------------------------
function GetHookPlayObjectCreate: TObjectAction; stdcall;
procedure SetHookPlayObjectCreate(Value: TObjectAction); stdcall;
//---------------------TPlayObject类释放时调用-----------------------------
function GetHookPlayObjectFree: TObjectAction; stdcall;
procedure SetHookPlayObjectFree(Value: TObjectAction); stdcall;
//---------------------THeroObject类创建时调用-----------------------------
function GetHookHeroObjectCreate: TObjectAction; stdcall;
procedure SetHookHeroObjectCreate(Value: TObjectAction); stdcall;
//---------------------THeroObject类释放时调用-----------------------------
function GetHookHeroObjectFree: TObjectAction; stdcall;
procedure SetHookHeroObjectFree(Value: TObjectAction); stdcall;
//---------------------TBaseObject类创建时调用-----------------------------
function GetHookBaseObjectCreate: TObjectAction; stdcall;
procedure SetHookBaseObjectCreate(Value: TObjectAction); stdcall;
//---------------------TBaseObject类释放时调用-----------------------------
function GetHookBaseObjectFree: TObjectAction; stdcall;
procedure SetHookBaseObjectFree(Value: TObjectAction); stdcall;
//---------------------TBaseObject类运行时调用-----------------------------
function GetHookBaseObjectRun: TObjectAction; stdcall;
procedure SetHookBaseObjectRun(Value: TObjectAction); stdcall;
//---------------------开始处理人物消息时调用-----------------------------
function GetHookPlayObjectFilterStartOperateMessage: TObjectOperateMessage; stdcall;
procedure SetHookPlayObjectFilterStartOperateMessage(Value: TObjectOperateMessage); stdcall;
//---------------------人物消息处理结束时调用-----------------------------
function GetHookPlayObjectFilterStopOperateMessage: TObjectOperateMessage; stdcall;
procedure SetHookPlayObjectFilterStopOperateMessage(Value: TObjectOperateMessage); stdcall;
//---------------------处理NPC变量时调用-----------------------------
//该程序禁止调用TNormNpc_GetLineVariableText 否则会发生死循环，引擎会死掉。
function GetHookGetVariableText: TGetVariableText; stdcall;
procedure SetHookGetVariableText(Value: TGetVariableText); stdcall;
//---------------------引擎启动完成时调用-----------------------------
function GetHookStartEngine: TStart; stdcall;
procedure SetHookStartEngine(Value: TStart); stdcall;
//---------------------引擎读取脚本时调用-----------------------------
function GetHookLoadScriptFile: TLoadScriptFile; stdcall; //脚本不存在时调用该函数
procedure SetHookLoadScriptFile(Value: TLoadScriptFile); stdcall; //脚本不存在时调用该函数
//---------------------使用魔法时调用-----------------------------
function GetHookMagicManagerDoSpell: TDoSpell; stdcall; //使用引擎内部没有的魔法时会触发
procedure SetHookMagicManagerDoSpell(Value: TDoSpell); stdcall; //使用引擎内部没有的魔法时会触发
//---------------------假人运行时调用-----------------------------
function GetHookDummyObjectRun1: TObjectActionEx; stdcall;
procedure SetHookDummyObjectRun1(Value: TObjectActionEx); stdcall;
function GetHookDummyObjectRun2: TObjectActionEx; stdcall;
procedure SetHookDummyObjectRun2(Value: TObjectActionEx); stdcall;
//---------------------开始刷新角色属性时调用-----------------------------

//角色属性发生变化时（例如：防御、魔防、攻击、魔法、道术等增加或减少）触发该程序 也可以使用TBaseObject_RecalcAbilitys强制重读角色属性从而触发该程序
//该子程序内禁止调用TBaseObject_RecalcAbilitys 否则会发生死循环导致引擎出错。
// 也不能使用脚本触发， 否则也可能发生死循环导致引擎出错。如果要使用脚本触发，可以自定义一个消息号，使用TBaseObject_SendMsg加入消息队列，然后在HookPlayObjectFilterOperateMessage消息中检测该消息而触发脚本，
//使用自定义消息时，大一点，不要和引擎内部消息号相同（60000以上即可）

function GetHookStartRecalcAbilitys: TObjectAction; stdcall;
procedure SetHookStartRecalcAbilitys(Value: TObjectAction); stdcall;
//---------------------刷新角色属性结束时调用-----------------------------
//角色属性发生变化时（例如：防御、魔防、攻击、魔法、道术等增加或减少）触发该程序 也可以使用TBaseObject_RecalcAbilitys强制重读角色属性从而触发该程序
//该子程序内禁止调用TBaseObject_RecalcAbilitys 否则会发生死循环导致引擎出错。
//也不能使用脚本触发， 否则也可能发生死循环导致引擎出错。如果要使用脚本触发，可以自定义一个消息号，使用TBaseObject_SendMsg加入消息队列，然后在HookPlayObjectFilterOperateMessage消息中检测该消息而触发脚本，
//使用自定义消息时，大一点，不要和引擎内部消息号相同（60000以上即可）
function GetHookStopRecalcAbilitys: TObjectAction; stdcall;
procedure SetHookStopRecalcAbilitys(Value: TObjectAction); stdcall;
//------------------------------------------------------------------------------
function MakeDefaultMsg(wIdent: Word; nRecog: Int64; wParam, wTag, wSeries: Word): _TDEFAULTMESSAGE;
function EncodeMessage(Msg: _TDEFAULTMESSAGE): _STRING;
function DecodeMessage(const Str: _STRING): _TDEFAULTMESSAGE;
function EncodeString(const Str: _STRING): _STRING;
function DecodeString(const Str: _STRING): _STRING;
function EncodeBuffer(buf: _PCHAR; bufsize: Integer): _STRING;
procedure DecodeBuffer(const src: _STRING; buf: _PCHAR);

procedure SendItemDura(SmartObject: TSmartObject; btWhere: Byte; Dura, DuraMax: Word); //发送身上装备持久到客户端  btWhere=0~15 装备位置
procedure SendAbility(SmartObject: TSmartObject); //发送 Ability属性到客户端
procedure SendMagicExpLevel(SmartObject: TSmartObject; UserMagic: _LPTUSERMAGIC); //发送魔法等级升级和经验信息
procedure GoldChanged(PlayObject: TPlayObject); //发送金币数量消息
procedure MaggicAttack(PlayObject: TSmartObject; TargeTBaseObject: TBaseObject; nTargetX, nTargetY, nPower: Integer; wMagicID: Word); //魔法攻击
procedure MakePoision(PlayObject: TSmartObject; TargeTBaseObject: TBaseObject; nPoision, nTime, nPower: Integer); //对目标施毒
implementation

procedure MaggicAttack(PlayObject: TSmartObject; TargeTBaseObject: TBaseObject; nTargetX, nTargetY, nPower: Integer; wMagicID: Word); //魔法攻击
begin
  TBaseObject_SendDelayMsg(PlayObject, PlayObject, RM_DELAYMAGIC, nPower, MakeLong(nTargetX, nTargetY), 2, _INTEGER(TargeTBaseObject), _PCHAR(IntToStr(wMagicID)), 600);
end;

procedure MakePoision(PlayObject: TSmartObject; TargeTBaseObject: TBaseObject; nPoision, nTime, nPower: Integer); //对目标施毒
begin
  TBaseObject_SendDelayMsg(PlayObject, PlayObject, RM_POISON, nPoision, nTime, _INTEGER(TargeTBaseObject), nPower, '', 600);
end;

procedure GoldChanged(PlayObject: TPlayObject);
begin
  TBaseObject_SendMsg(PlayObject, PlayObject, RM_GOLDCHANGED, 0, 0, 0, 0, '');
end;

procedure SendMagicExpLevel(SmartObject: TSmartObject; UserMagic: _LPTUSERMAGIC);
begin
  TBaseObject_SendDelayMsg(SmartObject, SmartObject, RM_MAGIC_LVEXP, 0, UserMagic.wMagIdx, MakeWord(UserMagic.btLevel, UserMagic.btNewLevel), UserMagic.nTranPoint, _PCHAR(IntToStr(Integer(UserMagic.MagicAttr))), 100)
end;

procedure SendItemDura(SmartObject: TSmartObject; btWhere: Byte; Dura, DuraMax: Word);
begin
  TBaseObject_SendMsg(SmartObject, SmartObject, RM_DURACHANGE, btWhere, Dura, DuraMax, 0, nil);
end;

procedure SendAbility(SmartObject: TSmartObject);
begin
  TBaseObject_SendMsg(SmartObject, SmartObject, RM_ABILITY, 0, 0, 0, 0, nil);
end;

function MakeDefaultMsg(wIdent: Word; nRecog: Int64; wParam, wTag, wSeries: Word): _TDEFAULTMESSAGE;
begin
  Result.nRecog := nRecog;
  Result.wIdent := wIdent;
  Result.wParam := wParam;
  Result.wTag := wTag;
  Result.wSeries := wSeries;
end;

function EncodeMessage(Msg: _TDEFAULTMESSAGE): _STRING;
var
  nLen: Integer;
begin
  SetLength(Result, SizeOf(_TDEFAULTMESSAGE) * 2);
  nLen := M2Server_EncodeBuffer(@Msg, SizeOf(_TDEFAULTMESSAGE), @Result[1]);
  SetLength(Result, nLen);
end;

function DecodeMessage(const Str: _STRING): _TDEFAULTMESSAGE;
begin
  M2Server_DecodeBuffer(_PCHAR(Str), SizeOf(_TDEFAULTMESSAGE), @Result);
end;

function EncodeString(const Str: _STRING): _STRING;
var
  nLen: Integer;
begin
  SetLength(Result, Length(Str) * 2);
  nLen := M2Server_EncodeBuffer(_PCHAR(Str), Length(Str), @Result[1]);
  SetLength(Result, nLen);
end;

function DecodeString(const Str: _STRING): _STRING;
var
  nLen: Integer;
  S: _STRING;
begin
  SetLength(Result, Length(Str));
  nLen := M2Server_DecodeBuffer(_PCHAR(Str), Length(Str), @Result[1]);
  SetLength(Result, nLen);
end;

function EncodeBuffer(buf: _PCHAR; bufsize: Integer): _STRING;
var
  nLen: Integer;
begin
  SetLength(Result, bufsize * 2);
  nLen := M2Server_EncodeBuffer(buf, bufsize, @Result[1]);
  SetLength(Result, nLen);
end;

procedure DecodeBuffer(const src: _STRING; buf: _PCHAR);
begin
  M2Server_DecodeBuffer(_PCHAR(src), Length(src), buf);
end;

procedure TMemoryManager_Get; external LibName name 'TMemoryManager_Get';

function TList_Create; external LibName name 'TList_Create';
procedure TList_Free(List: TList); external LibName name 'TList_Free';
function TList_Count; external LibName name 'TList_Count';
procedure TList_Add; external LibName name 'TList_Add';
procedure TList_Insert; external LibName name 'TList_Insert';
function TList_Get; external LibName name 'TList_Get';
procedure TList_Put; external LibName name 'TList_Put';
procedure TList_Delete; external LibName name 'TList_Delete';
procedure TList_Clear; external LibName name 'TList_Clear';
//------------------------------------------------------------------------------
function TStringList_Create; external LibName name 'TStringList_Create';
procedure TStringList_Free; external LibName name 'TStringList_Free';
function TStringList_Count; external LibName name 'TStringList_Count';
procedure TStringList_Add; external LibName name 'TStringList_Add';
procedure TStringList_AddObject; external LibName name 'TStringList_AddObject';
procedure TStringList_Insert; external LibName name 'TStringList_Insert';
function TStringList_Get; external LibName name 'TStringList_Get';
function TStringList_GetObject; external LibName name 'TStringList_GetObject';
procedure TStringList_Put; external LibName name 'TStringList_Put';
procedure TStringList_PutObject; external LibName name 'TStringList_PutObject';
procedure TStringList_Delete; external LibName name 'TStringList_Delete';
procedure TStringList_Clear; external LibName name 'TStringList_Clear';

//------------------------------------------------------------------------------
function TMemoryStream_Create; external LibName name 'TMemoryStream_Create';
procedure TMemoryStream_Free; external LibName name 'TMemoryStream_Free';
function TMemoryStream_Read; external LibName name 'TMemoryStream_Read';
function TMemoryStream_Write; external LibName name 'TMemoryStream_Write';
function TMemoryStream_Seek; external LibName name 'TMemoryStream_Seek';
function TMemoryStream_Size; external LibName name 'TMemoryStream_Size';
procedure TMemoryStream_Clear; external LibName name 'TMemoryStream_Clear';
function TMemoryStream_Memory; external LibName name 'TMemoryStream_Memory';
function TMemoryStream_Position; external LibName name 'TMemoryStream_Position';
//------------------------------------------------------------------------------

function M2Server_TMainMenu_MenuItem; external LibName name 'M2Server_TMainMenu_MenuItem';
function M2Server_TMainMenu_MenuItem_Count; external LibName name 'M2Server_TMainMenu_MenuItem_Count';
function M2Server_TMainMenu_MenuItem_Get; external LibName name 'M2Server_TMainMenu_MenuItem_Get';
function M2Server_TMainMenu_MenuItem_GetCaption; external LibName name 'M2Server_TMainMenu_MenuItem_GetCaption';
function M2Server_TMainMenu_MenuItem_Add; external LibName name 'M2Server_TMainMenu_MenuItem_Add';
function M2Server_TMainMenu_MenuItem_Insert; external LibName name 'M2Server_TMainMenu_MenuItem_Insert';

function M2Server_TConfig_sEnvirDir; external LibName name 'M2Server_TConfig_sEnvirDir';
function M2Server_TConfig_btMaxAbil; external LibName name 'M2Server_TConfig_btMaxAbil'; //最高属性0=65535 1=21E
function M2Server_TConfig_GlobaDyMval; external LibName name 'M2Server_TConfig_GlobaDyMval'; //I变量 0~499
function M2Server_TConfig_GlobalVal; external LibName name 'M2Server_TConfig_GlobalVal'; //G变量 0~499
function M2Server_TConfig_GetGlobalAVal; external LibName name 'M2Server_TConfig_GetGlobalAVal'; //A变量 0~499
procedure M2Server_TConfig_SetGlobalAVal; external LibName name 'M2Server_TConfig_SetGlobalAVal';
function M2Server_EncodeBuffer; external LibName name 'M2Server_EncodeBuffer';
function M2Server_DecodeBuffer; external LibName name 'M2Server_DecodeBuffer';
procedure M2Server_EncryBuffer; external LibName name 'M2Server_EncryBuffer';
function M2Server_GetTakeOnPosition; external LibName name 'M2Server_GetTakeOnPosition';
function M2Server_GetUseItemIdx; external LibName name 'M2Server_GetUseItemIdx';
procedure M2Server_UserItemToClientItem; external LibName name 'M2Server_UserItemToClientItem';
function M2Server_GetItemRules; external LibName name 'M2Server_GetItemRules'; //检测物品是否在物品规则列表
function M2Server_FilterTexts; external LibName name 'M2Server_FilterTexts'; //过滤消息

function TBaseObject_sMapName; external LibName name 'TBaseObject_sMapName';
function TBaseObject_sCharName; external LibName name 'TBaseObject_sCharName';
function TBaseObject_nCurrX; external LibName name 'TBaseObject_nCurrX';
function TBaseObject_nCurrY; external LibName name 'TBaseObject_nCurrY';
function TBaseObject_btDirection; external LibName name 'TBaseObject_btDirection';
function TBaseObject_btGender; external LibName name 'TBaseObject_btGender';
function TBaseObject_btHair; external LibName name 'TBaseObject_btHair';
function TBaseObject_btJob; external LibName name 'TBaseObject_btJob';
function TBaseObject_btPermission; external LibName name 'TBaseObject_btPermission'; //  人物权限等级
function TBaseObject_boDeath; external LibName name 'TBaseObject_boDeath';
function TBaseObject_boGhost; external LibName name 'TBaseObject_boGhost';
function TBaseObject_Ability; external LibName name 'TBaseObject_Ability';
function TBaseObject_WAbility; external LibName name 'TBaseObject_WAbility';
function TBaseObject_nCharStatus; external LibName name 'TBaseObject_nCharStatus';
function TBaseObject_sHomeMap; external LibName name 'TBaseObject_sHomeMap';
function TBaseObject_nHomeX; external LibName name 'TBaseObject_nHomeX';
function TBaseObject_nHomeY; external LibName name 'TBaseObject_nHomeY';
function TBaseObject_wAppr; external LibName name 'TBaseObject_wAppr';
function TBaseObject_btRaceServer; external LibName name 'TBaseObject_btRaceServer'; //角色类型
function TBaseObject_btRaceImg; external LibName name 'TBaseObject_btRaceImg'; //角色外形
function TBaseObject_btAttatckMode; external LibName name 'TBaseObject_btAttatckMode'; //攻击模式
function TBaseObject_nViewRange; external LibName name 'TBaseObject_nViewRange'; //可视范围大小
function TBaseObject_SlaveList; external LibName name 'TBaseObject_SlaveList'; //宝宝列表
function TBaseObject_Master; external LibName name 'TBaseObject_Master'; //主人
function TBaseObject_PEnvir; external LibName name 'TBaseObject_PEnvir';
function TBaseObject_TargetCret; external LibName name 'TBaseObject_TargetCret';
function TBaseObject_LastHiter; external LibName name 'TBaseObject_LastHiter';
function TBaseObject_ExpHitter; external LibName name 'TBaseObject_ExpHitter';
function TBaseObject_Pointer; external LibName name 'TBaseObject_Pointer'; //TBaseObject Create 时申请内存 在HookBaseObjectCreate中指定大小 该内存由引擎释放
function TBaseObject_nHealthRecover; external LibName name 'TBaseObject_nHealthRecover'; //HP恢复速度
function TBaseObject_nSpellRecover; external LibName name 'TBaseObject_nSpellRecover'; //MP恢复速度
function TBaseObject_btAntiPoison; external LibName name 'TBaseObject_btAntiPoison'; //毒躲避
function TBaseObject_nPoisonRecover; external LibName name 'TBaseObject_nPoisonRecover'; //中毒恢复
function TBaseObject_nAntiMagic; external LibName name 'TBaseObject_nAntiMagic'; //魔法躲避
function TBaseObject_nLuck; external LibName name 'TBaseObject_nLuck'; // 人物的幸运值Luck
function TBaseObject_nHitSpeed; external LibName name 'TBaseObject_nHitSpeed'; //攻击速度
procedure TBaseObject_SendMsg; external LibName name 'TBaseObject_SendMsg';
procedure TBaseObject_SendDelayMsg; external LibName name 'TBaseObject_SendDelayMsg';
procedure TBaseObject_SendRefMsg; external LibName name 'TBaseObject_SendRefMsg';
procedure TBaseObject_SendUpdateMsg; external LibName name 'TBaseObject_SendUpdateMsg';
procedure TBaseObject_SysMsg; external LibName name 'TBaseObject_SysMsg';
function TBaseObject_IsEnoughBag; external LibName name 'TBaseObject_IsEnoughBag';
function TBaseObject_InSafeZone; external LibName name 'TBaseObject_InSafeZone';
function TBaseObject_InSafeZoneA; external LibName name 'TBaseObject_InSafeZoneA';
procedure TBaseObject_HealthSpellChanged; external LibName name 'TBaseObject_HealthSpellChanged';
procedure TBaseObject_DamageHealth; external LibName name 'TBaseObject_DamageHealth';
procedure TBaseObject_HasLevelUp; external LibName name 'TBaseObject_HasLevelUp';
function TBaseObject_GetPoseCreate; external LibName name 'TBaseObject_GetPoseCreate';
function TBaseObject_CharPushed; external LibName name 'TBaseObject_CharPushed';
function TBaseObject_GetBackDir; external LibName name 'TBaseObject_GetBackDir';
function TBaseObject_GetMapBaseObjects; external LibName name 'TBaseObject_GetMapBaseObjects';

procedure TBaseObject_FeatureChanged; external LibName name 'TBaseObject_FeatureChanged';
procedure TBaseObject_TrainSkill; external LibName name 'TBaseObject_TrainSkill';
function TBaseObject_CheckMagicLevelup; external LibName name 'TBaseObject_CheckMagicLevelup';
function TBaseObject_AddItemToBag; external LibName name 'TBaseObject_AddItemToBag';
function TBaseObject_IsProtectTarget; external LibName name 'TBaseObject_IsProtectTarget';
function TBaseObject_IsAttackTarget; external LibName name 'TBaseObject_IsAttackTarget';
function TBaseObject_IsProperTarget; external LibName name 'TBaseObject_IsProperTarget';
function TBaseObject_IsProperFriend; external LibName name 'TBaseObject_IsProperFriend';
procedure TBaseObject_SetTargetCreat; external LibName name 'TBaseObject_SetTargetCreat'; //设置攻击目标
procedure TBaseObject_DelTargetCreat; external LibName name 'TBaseObject_DelTargetCreat'; //删除攻击目标

function TBaseObject_ItemList; external LibName name 'TBaseObject_ItemList'; //人物背包
function TBaseObject_DelBagItemA; external LibName name 'TBaseObject_DelBagItemA'; //删除指定行并且释放内存
function TBaseObject_DelBagItemB; external LibName name 'TBaseObject_DelBagItemB'; //删除指定物品序号行并且释放内存
function TBaseObject_DelBagItemC; external LibName name 'TBaseObject_DelBagItemC'; //删除指定物品行并且释放内存
procedure TBaseObject_MakeGhost; external LibName name 'TBaseObject_MakeGhost';
procedure TBaseObject_RecalcLevelAbilitys; external LibName name 'TBaseObject_RecalcLevelAbilitys';
procedure TBaseObject_RecalcAbilitys; external LibName name 'TBaseObject_RecalcAbilitys';
function TBaseObject_RecalcBagWeight; external LibName name 'TBaseObject_RecalcBagWeight';
function TBaseObject_GetLevelExp; external LibName name 'TBaseObject_GetLevelExp';

function TBaseObject_boDummyObject; external LibName name 'TBaseObject_boDummyObject'; //是否是假人
function TBaseObject_boISNGMonster; external LibName name 'TBaseObject_boISNGMonster'; //是否是内功怪
function TBaseObject_ActorIcons; external LibName name 'TBaseObject_ActorIcons'; //顶戴花翎
procedure TBaseObject_RefShowName; external LibName name 'TBaseObject_RefShowName'; //刷新名称
procedure TBaseObject_RefUseIcons; external LibName name 'TBaseObject_RefUseIcons'; //刷新顶戴花翎
procedure TBaseObject_RefUseEffects; external LibName name 'TBaseObject_RefUseEffects'; //刷新效果
procedure TBaseObject_SpaceMove; external LibName name 'TBaseObject_SpaceMove';
procedure TBaseObject_MapRandomMove; external LibName name 'TBaseObject_MapRandomMove';
procedure TBaseObject_IncHealthSpell; external LibName name 'TBaseObject_IncHealthSpell';
procedure TBaseObject_StruckDamage; external LibName name 'TBaseObject_StruckDamage';
procedure TBaseObject_ReAlive; external LibName name 'TBaseObject_ReAlive';
function TBaseObject_CretInNearXY; external LibName name 'TBaseObject_CretInNearXY';
procedure TBaseObject_DamageSpell; external LibName name 'TBaseObject_DamageSpell';
function TBaseObject_GetHitStruckDamage; external LibName name 'TBaseObject_GetHitStruckDamage';
function TBaseObject_GetMagStruckDamage; external LibName name 'TBaseObject_GetMagStruckDamage';
procedure TBaseObject_WeightChanged; external LibName name 'TBaseObject_WeightChanged';
procedure TBaseObject_SendBagItems; external LibName name 'TBaseObject_SendBagItems';
procedure TBaseObject_IncExp; external LibName name 'TBaseObject_IncExp';
function TBaseObject_CanMove; external LibName name 'TBaseObject_CanMove';
function TBaseObject_CanRun; external LibName name 'TBaseObject_CanRun';
procedure TBaseObject_TurnTo; external LibName name 'TBaseObject_TurnTo';
function TBaseObject_WalkTo; external LibName name 'TBaseObject_WalkTo';
function TBaseObject_RunTo; external LibName name 'TBaseObject_RunTo';
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//TSmartObject继承TBaseObject。TPlayObject THeroObject继承 TSmartObject
function TSmartObject_MagicList; external LibName name 'TSmartObject_MagicList'; //技能表
function TSmartObject_UseItems; external LibName name 'TSmartObject_UseItems'; //身上装备

function TSmartObject_boTeleport; external LibName name 'TSmartObject_boTeleport'; //  传送戒指(Byte)   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boParalysis; external LibName name 'TSmartObject_boParalysis'; //  麻痹戒指(Byte)  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boUnParalysis; external LibName name 'TSmartObject_boUnParalysis'; //防麻痹             在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boRevival; external LibName name 'TSmartObject_boRevival'; //  复活戒指(Byte)  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boUnRevival; external LibName name 'TSmartObject_boUnRevival'; //防复活         在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boFlameRing; external LibName name 'TSmartObject_boFlameRing'; // 火焰戒指      在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boRecoveryRing; external LibName name 'TSmartObject_boRecoveryRing'; //  治愈戒指  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boAngryRing; external LibName name 'TSmartObject_boAngryRing'; //  未知戒指      在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boMagicShield; external LibName name 'TSmartObject_boMagicShield'; // 护身戒指   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boUnMagicShield; external LibName name 'TSmartObject_boUnMagicShield'; //防护身     在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boMuscleRing; external LibName name 'TSmartObject_boMuscleRing'; //  活力戒指   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boFastTrain; external LibName name 'TSmartObject_boFastTrain'; // 技巧项链    在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boProbeNecklace; external LibName name 'TSmartObject_boProbeNecklace'; //  探测项链  在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boGuildMove; external LibName name 'TSmartObject_boGuildMove'; //行会传送   在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_bopirit; external LibName name 'TSmartObject_bopirit'; //祈祷          在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boSupermanItem; external LibName name 'TSmartObject_boSupermanItem'; //不死戒指    在HookStopRecalcAbilitys中修改，其他地方修改无效

function TSmartObject_boExpItem; external LibName name 'TSmartObject_boExpItem'; //在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boPowerItem; external LibName name 'TSmartObject_boPowerItem'; // 在HookStopRecalcAbilitys中修改，其他地方修改无效

function TSmartObject_rExpItem; external LibName name 'TSmartObject_rExpItem'; // 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_rPowerItem; external LibName name 'TSmartObject_rPowerItem'; // 在HookStopRecalcAbilitys中修改，其他地方修改无效

function TSmartObject_boNoDropItem; external LibName name 'TSmartObject_boNoDropItem'; // 在HookStopRecalcAbilitys中修改，其他地方修改无效
function TSmartObject_boNoDropUseItem; external LibName name 'TSmartObject_boNoDropUseItem'; // 在HookStopRecalcAbilitys中修改，其他地方修改无效

function TSmartObject_dwPKDieLostExp; external LibName name 'TSmartObject_dwPKDieLostExp'; //PK 死亡掉经验，不够经验就掉等级
function TSmartObject_nPKDieLostLevel; external LibName name 'TSmartObject_nPKDieLostLevel'; //PK 死亡掉等级
function TSmartObject_boMysteriousMan; external LibName name 'TSmartObject_boMysteriousMan'; //蒙面人

function TSmartObject_nPkPoint; external LibName name 'TSmartObject_nPkPoint'; // 人物的PK值(4字节)
procedure TSmartObject_IncPkPoint; external LibName name 'TSmartObject_IncPkPoint'; //增加PK值
procedure TSmartObject_DecPKPoint; external LibName name 'TSmartObject_DecPKPoint'; //减少PK值
function TSmartObject_PKLevel; external LibName name 'TSmartObject_PKLevel'; //PK等级
procedure TSmartObject_RepairAllItem; external LibName name 'TSmartObject_RepairAllItem';
procedure TSmartObject_LoadConfigFile; external LibName name 'TSmartObject_LoadConfigFile'; //加载配置文件用于机器人
function TSmartObject_StartPickUpItem; external LibName name 'TSmartObject_StartPickUpItem';
function TSmartObject_AllowUseMagic; external LibName name 'TSmartObject_AllowUseMagic';
function TSmartObject_RunToNext; external LibName name 'TSmartObject_RunToNext';
function TSmartObject_WalkToNext; external LibName name 'TSmartObject_WalkToNext';
function TSmartObject_GotoNext; external LibName name 'TSmartObject_GotoNext';
function TSmartObject_GotoNextA; external LibName name 'TSmartObject_GotoNextA';
function TSmartObject_SelectMagic; external LibName name 'TSmartObject_SelectMagic'; //选择魔法
function TSmartObject_AttackTarget; external LibName name 'TSmartObject_AttackTarget';
//------------------------------------------------------------------------------
//TPlayObject开头的是人物相关函数
function TPlayObject_boSuperMan; external LibName name 'TPlayObject_boSuperMan'; // 无敌模式
function TPlayObject_boAdminMode; external LibName name 'TPlayObject_boAdminMode'; //管理模式
function TPlayObject_sUserID; external LibName name 'TPlayObject_sUserID'; //   登录帐号名
function TPlayObject_sIPaddr; external LibName name 'TPlayObject_sIPaddr'; //   人物IP地址
function TPlayObject_boNewHuman; external LibName name 'TPlayObject_boNewHuman'; //是否是新人
function TPlayObject_boHearWhisper; external LibName name 'TPlayObject_boHearWhisper'; //0x27C  允许私聊
function TPlayObject_boBanShout; external LibName name 'TPlayObject_boBanShout'; //0x27D  允许群聊
function TPlayObject_boBanGuildChat; external LibName name 'TPlayObject_boBanGuildChat'; //0x27E  拒绝行会聊天
function TPlayObject_boAllowDeal; external LibName name 'TPlayObject_boAllowDeal'; //0x27F  是不允许交易
function TPlayObject_boAllowChallenge; external LibName name 'TPlayObject_boAllowChallenge'; //0x27F  是不允许挑战
function TPlayObject_BlockWhisperList; external LibName name 'TPlayObject_BlockWhisperList'; //禁止私聊人员列表
function TPlayObject_boAllowGroupReCall; external LibName name 'TPlayObject_boAllowGroupReCall'; //允许天地合一
function TPlayObject_boAllowGroup; external LibName name 'TPlayObject_boAllowGroup'; //0xB0  允许组队
function TPlayObject_boAllowGuild; external LibName name 'TPlayObject_boAllowGuild'; //0xB1  允许加入行会
function TPlayObject_boCanDearRecall; external LibName name 'TPlayObject_boCanDearRecall'; //是否允许夫妻传送
function TPlayObject_boCanMasterRecall; external LibName name 'TPlayObject_boCanMasterRecall'; //是否允许师徒传送
function TPlayObject_StorageItemList; external LibName name 'TPlayObject_StorageItemList'; //仓库
function TPlayObject_GroupOwner; external LibName name 'TPlayObject_GroupOwner'; //0x274
function TPlayObject_GroupMembers; external LibName name 'TPlayObject_GroupMembers'; //0x278  组成员
function TPlayObject_sDearName; external LibName name 'TPlayObject_sDearName'; //配偶名称
function TPlayObject_DearHuman; external LibName name 'TPlayObject_DearHuman';
function TPlayObject_sMasterName; external LibName name 'TPlayObject_sMasterName'; //师徒名称
function TPlayObject_MasterHuman; external LibName name 'TPlayObject_MasterHuman';
function TPlayObject_MasterList; external LibName name 'TPlayObject_MasterList';
function TPlayObject_boMaster; external LibName name 'TPlayObject_boMaster';
function TPlayObject_btReLevel; external LibName name 'TPlayObject_btReLevel'; //转生等级
function TPlayObject_boShopStall; external LibName name 'TPlayObject_boShopStall'; //是否在摆摊
function TPlayObject_boStorageHero; external LibName name 'TPlayObject_boStorageHero'; //英雄是否寄存
function TPlayObject_boStorageDeputyHero; external LibName name 'TPlayObject_boStorageDeputyHero'; //副将英雄是否寄存
function TPlayObject_MyHero; external LibName name 'TPlayObject_MyHero';
function TPlayObject_boFixedHero; external LibName name 'TPlayObject_boFixedHero'; //是否评定主副英雄
function TPlayObject_sHeroName; external LibName name 'TPlayObject_sHeroName'; //主英雄名
function TPlayObject_sDeputyHeroName; external LibName name 'TPlayObject_sDeputyHeroName'; //副将英雄名字
function TPlayObject_btDeputyHeroJob; external LibName name 'TPlayObject_btDeputyHeroJob'; //副将英雄出生职业
function TPlayObject_nVal; external LibName name 'TPlayObject_nVal'; //P变量0~9
function TPlayObject_nDyVal; external LibName name 'TPlayObject_nDyVal'; //D变量0~9
function TPlayObject_nMVal; external LibName name 'TPlayObject_nMVal'; //M变量0~99
function TPlayObject_nNVal; external LibName name 'TPlayObject_nNVal'; //N变量0~99
function TPlayObject_GetSVal; external LibName name 'TPlayObject_GetSVal'; //S变量0~99
procedure TPlayObject_SetSVal; external LibName name 'TPlayObject_SetSVal'; //S变量0~99
function TPlayObject_MyGuild; external LibName name 'TPlayObject_MyGuild'; //我的行会
function TPlayObject_nGuildRankNo; external LibName name 'TPlayObject_nGuildRankNo';
function TPlayObject_sGuildRankName; external LibName name 'TPlayObject_sGuildRankName';
function TPlayObject_boOffLine; external LibName name 'TPlayObject_boOffLine'; //是否是离线挂机人物
function TPlayObject_nGold; external LibName name 'TPlayObject_nGold';
function TPlayObject_nGamePoint; external LibName name 'TPlayObject_nGamePoint';
function TPlayObject_nGameGold; external LibName name 'TPlayObject_nGameGold';
function TPlayObject_nGameGird; external LibName name 'TPlayObject_nGameGird';
function TPlayObject_nGameDiamond; external LibName name 'TPlayObject_nGameDiamond';
function TPlayObject_nGameGlory; external LibName name 'TPlayObject_nGameGlory';
function TPlayObject_IncGold; external LibName name 'TPlayObject_IncGold';
function TPlayObject_DecGold; external LibName name 'TPlayObject_DecGold';
procedure TPlayObject_IncGamePoint; external LibName name 'TPlayObject_IncGamePoint';
procedure TPlayObject_DecGamePoint; external LibName name 'TPlayObject_DecGamePoint';
procedure TPlayObject_IncGameGold; external LibName name 'TPlayObject_IncGameGold';
procedure TPlayObject_DecGameGold; external LibName name 'TPlayObject_DecGameGold';
procedure TPlayObject_IncGameGird; external LibName name 'TPlayObject_IncGameGird';
procedure TPlayObject_DecGameGird; external LibName name 'TPlayObject_DecGameGird';
procedure TPlayObject_IncGameDiamond; external LibName name 'TPlayObject_IncGameDiamond';
procedure TPlayObject_DecGameDiamond; external LibName name 'TPlayObject_DecGameDiamond';
procedure TPlayObject_IncGameGlory; external LibName name 'TPlayObject_IncGameGlory';
procedure TPlayObject_DecGameGlory; external LibName name 'TPlayObject_DecGameGlory';
procedure TPlayObject_IncExp; external LibName name 'TPlayObject_IncExp';
procedure TPlayObject_MoveToHome; external LibName name 'TPlayObject_MoveToHome'; //回城
procedure TPlayObject_SendSocket; external LibName name 'TPlayObject_SendSocket'; //发送数据
procedure TPlayObject_SendDefMessage; external LibName name 'TPlayObject_SendDefMessage'; //发送数据
procedure TPlayObject_SendAddItem; external LibName name 'TPlayObject_SendAddItem';
procedure TPlayObject_SendDelItems; external LibName name 'TPlayObject_SendDelItems';
procedure TPlayObject_SendUpdateItem; external LibName name 'TPlayObject_SendUpdateItem';
procedure TPlayObject_SendAddMagic; external LibName name 'TPlayObject_SendAddMagic';
procedure TPlayObject_SendDelMagic; external LibName name 'TPlayObject_SendDelMagic';
procedure TPlayObject_SendEffectImageList; external LibName name 'TPlayObject_SendEffectImageList'; //发送Wil列表
procedure TPlayObject_SendSpecialCmdList; external LibName name 'TPlayObject_SendSpecialCmdList'; //发送特殊命令
procedure TPlayObject_SendServerConfig; external LibName name 'TPlayObject_SendServerConfig'; //发送内挂配置
procedure TPlayObject_SendUseItems; external LibName name 'TPlayObject_SendUseItems'; //发送身上装备
procedure TPlayObject_SendUseMagic; external LibName name 'TPlayObject_SendUseMagic'; //发送技能列表
procedure TPlayObject_SendBagItems; external LibName name 'TPlayObject_SendBagItems';
procedure TPlayObject_SendGoldInfo; external LibName name 'TPlayObject_SendGoldInfo';
procedure TPlayObject_SendNewGamePointInfo; external LibName name 'TPlayObject_SendNewGamePointInfo';
procedure TPlayObject_SendGameGlory; external LibName name 'TPlayObject_SendGameGlory';
procedure TPlayObject_SendMoveMsg; external LibName name 'TPlayObject_SendMoveMsg';
procedure TPlayObject_SendCenterMsg; external LibName name 'TPlayObject_SendCenterMsg';
procedure TPlayObject_SendTopBroadCastMsg; external LibName name 'TPlayObject_SendTopBroadCastMsg';
function TPlayObject_nMoveSpeed; external LibName name 'TPlayObject_nMoveSpeed'; //行走速度    -10 ~ +10
function TPlayObject_nAttackSpeed; external LibName name 'TPlayObject_nAttackSpeed'; //攻击速度  -10 ~ +10
function TPlayObject_nSpellSpeed; external LibName name 'TPlayObject_nSpellSpeed'; //魔法速度  -10 ~ +10
function TPlayObject_dwChangeSpeedTimeTicks; external LibName name 'TPlayObject_dwChangeSpeedTimeTicks'; //改变速度的有效时间 nIndex在0到2之间
procedure TPlayObject_RefGameSpeed; external LibName name 'TPlayObject_RefGameSpeed'; //刷新游戏速度
procedure TPlayObject_ClientHeroLogOn; external LibName name 'TPlayObject_ClientHeroLogOn'; //召唤英雄
function TPlayObject_CheckTakeOnItems; external LibName name 'TPlayObject_CheckTakeOnItems';
function TPlayObject_Pointer; external LibName name 'TPlayObject_Pointer';
//------------------------------------------------------------------------------
function TDummyObject_boStart; external LibName name 'TDummyObject_boStart'; //是否开始挂机
procedure TDummyObject_Start; external LibName name 'TDummyObject_Start'; //开始挂机
procedure TDummyObject_Stop; external LibName name 'TDummyObject_Stop'; //停止挂机
//------------------------------------------------------------------------------
//THeroObject开头的是英雄相关函数
function THeroObject_rLoyalPoint; external LibName name 'THeroObject_rLoyalPoint'; //忠诚度
function THeroObject_boIsDeputy; external LibName name 'THeroObject_boIsDeputy'; //是否是副将英雄
procedure THeroObject_IncExp; external LibName name 'THeroObject_IncExp';
procedure THeroObject_SendUseitems; external LibName name 'THeroObject_SendUseitems';
procedure THeroObject_SendAddItem; external LibName name 'THeroObject_SendAddItem';
procedure THeroObject_SendDelItems; external LibName name 'THeroObject_SendDelItems';
procedure THeroObject_SendUpdateItem; external LibName name 'THeroObject_SendUpdateItem';
procedure THeroObject_SendUseMagic; external LibName name 'THeroObject_SendUseMagic';
procedure THeroObject_SendAddMagic; external LibName name 'THeroObject_SendAddMagic';
procedure THeroObject_SendDelMagic; external LibName name 'THeroObject_SendDelMagic';
procedure THeroObject_LogOut; external LibName name 'THeroObject_LogOut';
procedure THeroObject_RestHero; external LibName name 'THeroObject_RestHero';
function THeroObject_Pointer; external LibName name 'THeroObject_RestHero';
//------------------------------------------------------------------------------
function TNormNpc_Create; external LibName name 'TNormNpc_Create'; //创建NPC，该NPC由引擎自动释放
function TNormNpc_boIsHide; external LibName name 'TNormNpc_boIsHide';
procedure TNormNpc_ClearScript; external LibName name 'TNormNpc_ClearScript';
procedure TNormNpc_LoadNpcScript; external LibName name 'TNormNpc_LoadNpcScript';
function TNormNpc_sFilePath; external LibName name 'TNormNpc_sFilePath';
function TNormNpc_sPath; external LibName name 'TNormNpc_sPath';
function TNormNpc_GetLineVariableText; external LibName name 'TNormNpc_GetLineVariableText';
procedure TNormNpc_GotoLable; external LibName name 'TNormNpc_GotoLable';
procedure TNormNpc_SendMsgToUser; external LibName name 'TNormNpc_SendMsgToUser';
procedure TNormNpc_MessageBox; external LibName name 'TNormNpc_MessageBox';
function TNormNpc_GetVarValue; external LibName name 'TNormNpc_GetVarValue';
function TNormNpc_SetVarValue; external LibName name 'TNormNpc_SetVarValue';
function TNormNpc_GetDynamicVarValue; external LibName name 'TNormNpc_GetDynamicVarValue';
function TNormNpc_SetDynamicVarValue; external LibName name 'TNormNpc_SetDynamicVarValue';
//------------------------------------------------------------------------------
function TUserEngine_PlayObjectList; external LibName name 'TUserEngine_PlayObjectList';
function TUserEngine_HeroObjectList; external LibName name 'TUserEngine_HeroObjectList';
function TUserEngine_MerchantList; external LibName name 'TUserEngine_MerchantList';
function TUserEngine_QuestNPCList; external LibName name 'TUserEngine_QuestNPCList';
function TUserEngine_MagicList; external LibName name 'TUserEngine_MagicList';
function TUserEngine_StdItemList; external LibName name 'TUserEngine_StdItemList';

function TUserEngine_ManageNPC; external LibName name 'TUserEngine_ManageNPC';
function TUserEngine_RobotNPC; external LibName name 'TUserEngine_RobotNPC';
function TUserEngine_FunctionNPC; external LibName name 'TUserEngine_FunctionNPC';
function TUserEngine_MissionNPC; external LibName name 'TUserEngine_MissionNPC';

function TUserEngine_FindMagicA; external LibName name 'TUserEngine_FindMagicA';
function TUserEngine_FindMagicB; external LibName name 'TUserEngine_FindMagicB';
function TUserEngine_FindHeroMagicA; external LibName name 'TUserEngine_FindHeroMagicA';
function TUserEngine_FindHeroMagicB; external LibName name 'TUserEngine_FindHeroMagicB';

function TUserEngine_FindMagicC; external LibName name 'TUserEngine_FindMagicC';
function TUserEngine_FindMagicD; external LibName name 'TUserEngine_FindMagicD';
function TUserEngine_FindHeroMagicC; external LibName name 'TUserEngine_FindHeroMagicC';
function TUserEngine_FindHeroMagicD; external LibName name 'TUserEngine_FindHeroMagicD';

procedure TUserEngine_SendBroadCastMsg; external LibName name 'TUserEngine_SendBroadCastMsg';
procedure TUserEngine_SendBroadCastMsgExt; external LibName name 'TUserEngine_SendBroadCastMsgExt';
procedure TUserEngine_SendTopBroadCastMsg; external LibName name 'TUserEngine_SendTopBroadCastMsg';
procedure TUserEngine_SendServerConfig; external LibName name 'TUserEngine_SendServerConfig';
procedure TUserEngine_SendMoveMsg; external LibName name 'TUserEngine_SendMoveMsg';
procedure TUserEngine_SendCenterMsg; external LibName name 'TUserEngine_SendCenterMsg';

function TUserEngine_GetStdItemA; external LibName name 'TUserEngine_GetStdItemA';
function TUserEngine_GetStdItemB; external LibName name 'TUserEngine_GetStdItemB';
function TUserEngine_GetStdItemWeight; external LibName name 'TUserEngine_GetStdItemWeight';
function TUserEngine_GetStdItemName; external LibName name 'TUserEngine_GetStdItemName';
function TUserEngine_GetStdItemIdx; external LibName name 'TUserEngine_GetStdItemIdx';
function TUserEngine_GetPlayObjectA; external LibName name 'TUserEngine_GetPlayObjectA';
function TUserEngine_GetPlayObjectB; external LibName name 'TUserEngine_GetPlayObjectB';
function TUserEngine_GetPlayObjectEx; external LibName name 'TUserEngine_GetPlayObjectEx';
function TUserEngine_GetPlayObjectOfAccount; external LibName name 'TUserEngine_GetPlayObjectOfAccount';

function TUserEngine_GetOfflinePlayObject; external LibName name 'TUserEngine_GetOfflinePlayObject';
procedure TUserEngine_KickPlayObjectEx; external LibName name 'TUserEngine_KickPlayObjectEx';

function TUserEngine_GetHeroObject; external LibName name 'TUserEngine_GetHeroObject';
function TUserEngine_GetHeroObjectEx; external LibName name 'TUserEngine_GetHeroObjectEx';
procedure TUserEngine_KickHeroObjectEx; external LibName name 'TUserEngine_KickHeroObjectEx';

function TUserEngine_FindMerchant; external LibName name 'TUserEngine_FindMerchant';
function TUserEngine_FindNPC; external LibName name 'TUserEngine_FindNPC';
function TUserEngine_CopyToUserItemFromName; external LibName name 'TUserEngine_CopyToUserItemFromName';

procedure TUserEngine_RandomUpgradeItem; external LibName name 'TUserEngine_RandomUpgradeItem';
procedure TUserEngine_GetUnknowItemValue; external LibName name 'TUserEngine_GetUnknowItemValue';
procedure TUserEngine_RandomItemNewAbil; external LibName name 'TUserEngine_RandomItemNewAbil'; //元素

function TUserEngine_GetDummyObjectCount; external LibName name 'TUserEngine_GetDummyObjectCount';
function TUserEngine_GetOfflineCount; external LibName name 'TUserEngine_GetOfflineCount';
function TUserEngine_GetReallyCount; external LibName name 'TUserEngine_GetReallyCount';
//------------------------------------------------------------------------------
function TEnvirnoment_sMapName; external LibName name 'TEnvirnoment_sMapName';
function TEnvirnoment_sMapDesc; external LibName name 'TEnvirnoment_sMapDesc';
function TEnvirnoment_nWidth; external LibName name 'TEnvirnoment_nWidth';
function TEnvirnoment_nHeight; external LibName name 'TEnvirnoment_nHeight';
function TEnvirnoment_CanWalk; external LibName name 'TEnvirnoment_CanWalk';
function TEnvirnoment_CanWalkExA; external LibName name 'TEnvirnoment_CanWalkExA';
function TEnvirnoment_CanWalkExB; external LibName name 'TEnvirnoment_CanWalkExB';
procedure TEnvirnoment_MapEffect; external LibName name 'TEnvirnoment_MapEffect'; //地图播放效果
function TEnvirnoment_GetRangeBaseObject; external LibName name 'TEnvirnoment_GetRangeBaseObject';
//------------------------------------------------------------------------------
function TMapManager_Find; external LibName name 'TMapManager_Find';
//------------------------------------------------------------------------------
function TGuild_GetMemberCount; external LibName name 'TGuild_GetMemberCount';
function TGuild_GetMemgerIsFull; external LibName name 'TGuild_GetMemgerIsFull';
function TGuild_IsMember; external LibName name 'TGuild_IsMember';
function TGuild_IsAllyGuild; external LibName name 'TGuild_IsAllyGuild';
function TGuild_IsWarGuild; external LibName name 'TGuild_IsWarGuild';
procedure TGuild_SendGuildMsg; external LibName name 'TGuild_SendGuildMsg';
function TGuild_GetRankName; external LibName name 'TGuild_GetRankName';
function TGuild_DelMember; external LibName name 'TGuild_DelMember';
function TGuild_IsNotWarGuild; external LibName name 'TGuild_IsNotWarGuild';
function TGuild_AddMember; external LibName name 'TGuild_AddMember';

function TGuildManager_MemberOfGuild; external LibName name 'TGuildManager_MemberOfGuild';
function TGuildManager_AddGuild; external LibName name 'TGuildManager_AddGuild';
function TGuildManager_FindGuild; external LibName name 'TGuildManager_FindGuild';
function TGuildManager_DelGuild; external LibName name 'TGuildManager_DelGuild';

//------------------------------------------------------------------------------
function TUserCastle_InCastleWarArea; external LibName name 'TUserCastle_InCastleWarArea';
function TUserCastle_IsMember; external LibName name 'TUserCastle_IsMember';
function TUserCastle_IsMasterGuild; external LibName name 'TUserCastle_IsMasterGuild';
function TUserCastle_IsAttackGuild; external LibName name 'TUserCastle_IsAttackGuild';
function TUserCastle_IsAttackAllyGuild; external LibName name 'TUserCastle_IsAttackAllyGuild';
function TUserCastle_IsDefenseGuild; external LibName name 'TUserCastle_IsDefenseGuild';
function TUserCastle_IsDefenseAllyGuild; external LibName name 'TUserCastle_IsDefenseAllyGuild';
function TUserCastle_CanGetCastle; external LibName name 'TUserCastle_CanGetCastle';
procedure TUserCastle_GetCastle; external LibName name 'TUserCastle_GetCastle';
function TUserCastle_AddAttackerInfo; external LibName name 'TUserCastle_AddAttackerInfo';
function TUserCastle_CheckInPalace; external LibName name 'TUserCastle_CheckInPalace';
function TCastleManager_Find; external LibName name 'TCastleManager_Find';
function TCastleManager_GetCastle; external LibName name 'TCastleManager_GetCastle';
function TCastleManager_InCastleWarAreaA; external LibName name 'TCastleManager_InCastleWarAreaA';
function TCastleManager_InCastleWarAreaB; external LibName name 'TCastleManager_InCastleWarAreaB';
function TCastleManager_IsCastleMember; external LibName name 'TCastleManager_IsCastleMember';
function TCastleManager_IsCastlePalaceEnvir; external LibName name 'TCastleManager_IsCastlePalaceEnvir';
function TCastleManager_IsCastleEnvir; external LibName name 'TCastleManager_IsCastleEnvir';
function TCastleManager_FindCastle; external LibName name 'TCastleManager_FindCastle';
//------------------------------------------------------------------------------
function GetHookLoadQuestConditionCmd; external LibName name 'GetHookLoadQuestConditionCmd';
procedure SetHookLoadQuestConditionCmd; external LibName name 'SetHookLoadQuestConditionCmd';
function GetHookLoadQuestActionCmd; external LibName name 'GetHookLoadQuestActionCmd';
procedure SetHookLoadQuestActionCmd; external LibName name 'SetHookLoadQuestActionCmd';
function GetHookQuestConditionProcess; external LibName name 'GetHookQuestConditionProcess';
procedure SetHookQuestConditionProcess; external LibName name 'SetHookQuestConditionProcess';
function GetHookQuestActionProcess; external LibName name 'GetHookQuestActionProcess';
procedure SetHookQuestActionProcess; external LibName name 'SetHookQuestActionProcess';
function GetHookBaseObjectOperateMessage; external LibName name 'GetHookBaseObjectOperateMessage';
procedure SetHookBaseObjectOperateMessage; external LibName name 'SetHookBaseObjectOperateMessage';
function GetHookObjectUserSelect; external LibName name 'GetHookObjectUserSelect';
procedure SetHookObjectUserSelect; external LibName name 'SetHookObjectUserSelect';
function GetHookProcessUserCmd; external LibName name 'GetHookProcessUserCmd';
procedure SetHookProcessUserCmd; external LibName name 'SetHookProcessUserCmd';
function GetHookObjectWalkIndex; external LibName name 'GetHookObjectWalkIndex';
procedure SetHookObjectWalkIndex; external LibName name 'SetHookObjectWalkIndex';
function GetHookObjectStruck; external LibName name 'GetHookObjectStruck';
procedure SetHookObjectStruck; external LibName name 'SetHookObjectStruck';
function GetHookObjectMagicStruck; external LibName name 'GetHookObjectMagicStruck';
procedure SetHookObjectMagicStruck; external LibName name 'SetHookObjectMagicStruck';
function GetHookObjectAttack; external LibName name 'GetHookObjectAttack';
procedure SetHookObjectAttack; external LibName name 'SetHookObjectAttack';
function GetHookObjectMagicAttack; external LibName name 'GetHookObjectMagicAttack';
procedure SetHookObjectMagicAttack; external LibName name 'SetHookObjectMagicAttack';
function GetHookPlayObjectRun; external LibName name 'GetHookPlayObjectRun';
procedure SetHookPlayObjectRun; external LibName name 'SetHookPlayObjectRun';
function GetHookUserLogin1; external LibName name 'GetHookUserLogin1';
procedure SetHookUserLogin1; external LibName name 'SetHookUserLogin1';
function GetHookUserLogin2; external LibName name 'GetHookUserLogin2';
procedure SetHookUserLogin2; external LibName name 'SetHookUserLogin2';
function GetHookUserLogin3; external LibName name 'GetHookUserLogin3';
procedure SetHookUserLogin3; external LibName name 'SetHookUserLogin3';
function GetHookUserLogin4; external LibName name 'GetHookUserLogin4';
procedure SetHookUserLogin4; external LibName name 'SetHookUserLogin4';
function GetHookObjectDie; external LibName name 'GetHookObjectDie';
procedure SetHookObjectDie; external LibName name 'SetHookObjectDie';
function GetHookBaseObjectMakeGhost; external LibName name 'GetHookBaseObjectMakeGhost';
procedure SetHookBaseObjectMakeGhost; external LibName name 'SetHookBaseObjectMakeGhost';
function GetHookPlayObjectCreate; external LibName name 'GetHookPlayObjectCreate';
procedure SetHookPlayObjectCreate; external LibName name 'SetHookPlayObjectCreate';
function GetHookPlayObjectFree; external LibName name 'GetHookPlayObjectFree';
procedure SetHookPlayObjectFree; external LibName name 'SetHookPlayObjectFree';
function GetHookHeroObjectCreate; external LibName name 'GetHookHeroObjectCreate';
procedure SetHookHeroObjectCreate; external LibName name 'SetHookHeroObjectCreate';
function GetHookHeroObjectFree; external LibName name 'GetHookHeroObjectFree';
procedure SetHookHeroObjectFree; external LibName name 'SetHookHeroObjectFree';
function GetHookBaseObjectCreate; external LibName name 'GetHookBaseObjectCreate';
procedure SetHookBaseObjectCreate; external LibName name 'SetHookBaseObjectCreate';
function GetHookBaseObjectFree; external LibName name 'GetHookBaseObjectFree';
procedure SetHookBaseObjectFree; external LibName name 'SetHookBaseObjectFree';
function GetHookBaseObjectRun; external LibName name 'GetHookBaseObjectRun';
procedure SetHookBaseObjectRun; external LibName name 'SetHookBaseObjectRun';
function GetHookPlayObjectFilterStartOperateMessage; external LibName name 'GetHookPlayObjectFilterStartOperateMessage';
procedure SetHookPlayObjectFilterStartOperateMessage; external LibName name 'SetHookPlayObjectFilterStartOperateMessage';
function GetHookPlayObjectFilterStopOperateMessage; external LibName name 'GetHookPlayObjectFilterStopOperateMessage';
procedure SetHookPlayObjectFilterStopOperateMessage; external LibName name 'SetHookPlayObjectFilterStopOperateMessage';
function GetHookGetVariableText; external LibName name 'GetHookGetVariableText';
procedure SetHookGetVariableText; external LibName name 'SetHookGetVariableText';
function GetHookStartEngine; external LibName name 'GetHookStartEngine';
procedure SetHookStartEngine; external LibName name 'SetHookStartEngine';
function GetHookLoadScriptFile; external LibName name 'GetHookLoadScriptFile';
procedure SetHookLoadScriptFile; external LibName name 'SetHookLoadScriptFile';
function GetHookMagicManagerDoSpell; external LibName name 'GetHookMagicManagerDoSpell';
procedure SetHookMagicManagerDoSpell; external LibName name 'SetHookMagicManagerDoSpell';
function GetHookDummyObjectRun1; external LibName name 'GetHookDummyObjectRun1';
procedure SetHookDummyObjectRun1; external LibName name 'SetHookDummyObjectRun1';
function GetHookDummyObjectRun2; external LibName name 'GetHookDummyObjectRun2';
procedure SetHookDummyObjectRun2; external LibName name 'SetHookDummyObjectRun2';
function GetHookStartRecalcAbilitys; external LibName name 'GetHookStartRecalcAbilitys';
procedure SetHookStartRecalcAbilitys; external LibName name 'SetHookStartRecalcAbilitys';

function GetHookStopRecalcAbilitys; external LibName name 'GetHookStopRecalcAbilitys';
procedure SetHookStopRecalcAbilitys; external LibName name 'SetHookStopRecalcAbilitys';
initialization
finalization

end.

