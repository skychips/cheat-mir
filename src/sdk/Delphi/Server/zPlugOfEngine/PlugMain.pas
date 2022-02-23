unit PlugMain;

interface
uses
  Windows, EngineAPI, EngineType;

procedure InitPlug();
procedure UnInitPlug();
implementation
uses
  Module, NpcScriptCmd, PlayAction, PlugShare;

procedure PlugMenuShowOnClick(ObjSelf, Sender: TObject);
begin
  MainOutMessasge(sPlugName, 0);
end;

//=============================================================================
//在引擎菜单中增加 插件的选项
//=============================================================================

procedure AddToMainMenu;
var
  MenuItem: TMenuItem;
  Method: TMethod;
begin
  if M2Server_TMainMenu_MenuItem_Count(M2Server_TMainMenu_MenuItem) > 0 then begin
    MenuItem := M2Server_TMainMenu_MenuItem_Insert(M2Server_TMainMenu_MenuItem,
      M2Server_TMainMenu_MenuItem_Count(M2Server_TMainMenu_MenuItem) - 1,
      _PCHAR('插件(&E)'), nil); //插入倒数第二项
    Method.Code := @PlugMenuShowOnClick;
    Method.Data := MenuItem;
    M2Server_TMainMenu_MenuItem_Add(MenuItem, _PCHAR('插件配置(&O)'), TNotifyEvent(Method));
  end;
end;
//=============================================================================
//加载插件模块时调用的初始化函数
//参数：Apphandle 为主程序句柄
//=============================================================================

procedure InitPlug();
begin
  AddToMainMenu;
  InitNpcScriptCmd();
  InitPlayAction();

  MainOutMessasge(sStartLoadPlug, 0);
end;
//=============================================================================
//退出插件模块时调用的结束函数
//=============================================================================

procedure UnInitPlug();
begin
  {
    写上相应处理代码;
  }
  UnInitNpcScriptCmd();
  UnInitPlayAction();
  MainOutMessasge(sUnLoadPlug, 0);
end;

end.

