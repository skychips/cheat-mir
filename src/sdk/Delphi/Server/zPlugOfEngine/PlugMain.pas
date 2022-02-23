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
//������˵������� �����ѡ��
//=============================================================================

procedure AddToMainMenu;
var
  MenuItem: TMenuItem;
  Method: TMethod;
begin
  if M2Server_TMainMenu_MenuItem_Count(M2Server_TMainMenu_MenuItem) > 0 then begin
    MenuItem := M2Server_TMainMenu_MenuItem_Insert(M2Server_TMainMenu_MenuItem,
      M2Server_TMainMenu_MenuItem_Count(M2Server_TMainMenu_MenuItem) - 1,
      _PCHAR('���(&E)'), nil); //���뵹���ڶ���
    Method.Code := @PlugMenuShowOnClick;
    Method.Data := MenuItem;
    M2Server_TMainMenu_MenuItem_Add(MenuItem, _PCHAR('�������(&O)'), TNotifyEvent(Method));
  end;
end;
//=============================================================================
//���ز��ģ��ʱ���õĳ�ʼ������
//������Apphandle Ϊ��������
//=============================================================================

procedure InitPlug();
begin
  AddToMainMenu;
  InitNpcScriptCmd();
  InitPlayAction();

  MainOutMessasge(sStartLoadPlug, 0);
end;
//=============================================================================
//�˳����ģ��ʱ���õĽ�������
//=============================================================================

procedure UnInitPlug();
begin
  {
    д����Ӧ�������;
  }
  UnInitNpcScriptCmd();
  UnInitPlayAction();
  MainOutMessasge(sUnLoadPlug, 0);
end;

end.

