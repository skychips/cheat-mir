unit PlugMain;

interface
uses
  Windows, ClientAPI, ClientType;


procedure InitPlug;
procedure UnInitPlug;
procedure HookInitialize(Handle: THandle; FirstInit: Boolean; WindowMode: Boolean; ScreenWidth, ScreenHeight: Word; ClientVersion: TClientVersion); stdcall;
procedure HookFinalize(); stdcall;
procedure HookDecodeMessagePacketStop(DefMsg: pTDefaultMessage; sData: PChar); stdcall;
procedure HookFormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer); stdcall;

procedure HookDrawScene4; stdcall;
implementation
var
  OldHookInitialize: TInitialize = nil;
  OldHookFinalize: TStartPro = nil;
  OldHookDecodeMessagePacketStop: TDecodeMessagePacket = nil;
  OldHookFormMouseMove: TFormMouseMove = nil;
  OldHookDrawScene4: TStartPro = nil;
//------------------------------------------------------------------------------
  MyWindow: TDxControl = nil;
  g_WindowMode: Boolean;
  g_ScreenWidth, g_ScreenHeight: Word;
  g_ClientVersion: TClientVersion;

  DTestWindow: TDxControl = nil;
  StartShowWindow: Boolean = False;
  StartHideWindow: Boolean = True;
  WindowMouseLeave: Boolean = True;
  WindowAlpha: Integer = 150;
  LeaveWindowTick: LongWord;

procedure InitPlug;
begin
  OldHookInitialize := HookAPI.GetHookInitialize();
  OldHookFinalize := HookAPI.GetHookFinalize();
  OldHookDecodeMessagePacketStop := HookAPI.GetHookDecodeMessagePacketStop();
  OldHookFormMouseMove := HookAPI.GetHookFormMouseMove();
  OldHookDrawScene4 := HookAPI.GetHookDrawScene4();
  HookAPI.SetHookInitialize(HookInitialize);
  HookAPI.SetHookFinalize(HookFinalize);
  HookAPI.SetHookDecodeMessagePacketStop(HookDecodeMessagePacketStop);
  HookAPI.SetHookFormMouseMove(HookFormMouseMove);
  HookAPI.SetHookDrawScene4(HookDrawScene4);
end;

procedure UnInitPlug;
begin
  HookAPI.SetHookInitialize(OldHookInitialize);
  HookAPI.SetHookFinalize(OldHookFinalize);
  HookAPI.SetHookDecodeMessagePacketStop(OldHookDecodeMessagePacketStop);
  HookAPI.SetHookFormMouseMove(OldHookFormMouseMove);
  HookAPI.SetHookDrawScene4(OldHookDrawScene4);
end;
//------------------------------------------------------------------------------

procedure OnClickCloseMyWindow(ObjSelf: TObject; Sender: TObject; X, Y: Integer); stdcall; //�����¼�
begin
  if MyWindow <> nil then
    DControlAPI.SetVisible(MyWindow, False);
end;
//------------------------------------------------------------------------------

procedure OnClick(ObjSelf: TObject; Sender: TObject; X, Y: Integer); stdcall; //�����¼�
begin
  GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnClick'), 255, 253);
  //GameAPI.AddTopChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnClick'), 250, 253, 10);
  //GameAPI.DMessageDlg(PChar(string(DControlAPI.Name(Sender)) + ' OnClick'), [mbOK]);
  if MyWindow <> nil then
    DControlAPI.SetVisible(MyWindow, not DControlAPI.Visible(MyWindow));
end;
//------------------------------------------------------------------------------

procedure OnDblClick(ObjSelf: TObject; Sender: TObject; X, Y: Integer); stdcall; //˫���¼�
begin
  GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnDblClick'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnShow(ObjSelf: TObject; Sender: TObject); stdcall; //��ʾ�¼�
begin
  GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnShow'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnHide(ObjSelf: TObject; Sender: TObject); stdcall; //�����¼�
begin

end;
//------------------------------------------------------------------------------

procedure OnMouseDown(ObjSelf: TObject; Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); stdcall; //��갴���¼�
begin
  GameAPI.AddChatBoardString(PChar('OnMouseDown'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseMove(ObjSelf: TObject; Sender: TObject; Shift: TShiftState; X, Y: Integer); stdcall; //����ƶ��¼�
begin
  //GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnMouseMove'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseUp(ObjSelf: TObject; Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); stdcall; //��굯���¼�
begin
  GameAPI.AddChatBoardString(PChar('OnMouseUp'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseEnter(ObjSelf: TObject; Sender: TObject); stdcall; //�������¼�
begin
  GameAPI.AddChatBoardString(PChar('OnMouseEnter'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseLeave(ObjSelf: TObject; Sender: TObject); stdcall; //����뿪�¼�
begin
  GameAPI.AddChatBoardString(PChar('OnMouseLeave'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnStartPaint(ObjSelf: TObject; Sender: TObject); stdcall; //��ʼ�����¼�
begin

end;
//------------------------------------------------------------------------------

procedure OnStartSubPaint(ObjSelf: TObject; Sender: TObject); stdcall; //��ʼ�����ӿؼ��¼�
begin

end;
//------------------------------------------------------------------------------

procedure OnStopPaint(ObjSelf: TObject; Sender: TObject); stdcall; //���ƽ����¼�
begin

end;
//------------------------------------------------------------------------------

procedure OnInRealArea(ObjSelf: TObject; Sender: TObject; X, Y: Integer; var IsRealArea: Boolean); stdcall;
begin

end;
//------------------------------------------------------------------------------

procedure OnGridMove(ObjSelf: TObject; Sender: TObject; ACol, ARow: Integer; Shift: TShiftState); stdcall;
begin

end;
//------------------------------------------------------------------------------

procedure OnGridSelect(ObjSelf: TObject; Sender: TObject; ACol, ARow: Integer; Button: TMouseButton; Shift: TShiftState); stdcall;
begin

end;
//------------------------------------------------------------------------------

procedure OnGridPaint(ObjSelf: TObject; Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState); stdcall;
begin

end;
//------------------------------------------------------------------------------

procedure HookDrawScene4(); stdcall;
var
  DestRect: TRect;
begin
  DestRect.Left := g_ScreenWidth - 30;
  DestRect.Top := 0;
  DestRect.Right := g_ScreenWidth;
  DestRect.Bottom := 300;
  DrawAPI.FrameRect(DestRect, clRed, Blend_Default);
  DrawAPI.BoldTextOut(DrawAPI.CurrentFont, 550, 30, '����ƶ�����ɫ�����������ʾ����', clRed, clBlack);
end;

procedure OnWindowPaint(ObjSelf: TObject; Sender: TObject); stdcall; //�����¼�
var
  DestRect: TRect;
  nTextLen: Integer;
const
  sText = 'www.gameofmir.com';
begin
  if DTestWindow <> nil then begin


    DestRect.Left := DControlAPI.Left(DTestWindow);
    DestRect.Top := DControlAPI.Top(DTestWindow);
    DestRect.Right := DestRect.Left + DControlAPI.Width(DTestWindow);
    DestRect.Bottom := DestRect.Top + DControlAPI.Height(DTestWindow);
    DrawAPI.FillRectAlpha(DestRect, clWhite, WindowAlpha, Blend_Default);
    nTextLen := DrawAPI.TextWidth(DrawAPI.CurrentFont, PChar(sText));



    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - nTextLen) div 2, DestRect.Top + 50, PChar(sText), clLime, clBlack);
    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - nTextLen) div 2, DestRect.Top + 80, PChar(sText), clRed, clBlack);
    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - nTextLen) div 2, DestRect.Top + 110, PChar(sText), clBlue, clBlack);
    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - nTextLen) div 2, DestRect.Top + 140, PChar(sText), clFuchsia, clBlack);
    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - nTextLen) div 2, DestRect.Top + 170, PChar(sText), clAqua, clBlack);
    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - nTextLen) div 2, DestRect.Top + 200, PChar(sText), clWhite, clBlack);

    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - DrawAPI.TextWidth(DrawAPI.CurrentFont, PChar('���������ʾ'))) div 2, DestRect.Top + 230, '���������ʾ', clLime, clBlack);
  end;
end;
//------------------------------------------------------------------------------

procedure OnWindowMouseEnter(ObjSelf: TObject; Sender: TObject); stdcall; //�������¼�
begin
  WindowMouseLeave := False;
  StartShowWindow := True;
end;
//------------------------------------------------------------------------------

procedure OnWindowMouseLeave(ObjSelf: TObject; Sender: TObject); stdcall; //����뿪�¼�
begin
  WindowMouseLeave := True;
  LeaveWindowTick := GetTickCount;
end;
//------------------------------------------------------------------------------

procedure OnWindowPress(ObjSelf: TObject; Sender: TObject); stdcall; //�����¼�
begin
  if DTestWindow <> nil then begin
    StartHideWindow := WindowMouseLeave and (GetTickCount - LeaveWindowTick > 5000);
    if StartShowWindow then begin
      WindowAlpha := 150;
      if DControlAPI.Left(DTestWindow) > g_ScreenWidth - DControlAPI.Width(DTestWindow) then begin
        DControlAPI.SetLeft(DTestWindow, DControlAPI.Left(DTestWindow) - 3);
      end;

      if DControlAPI.Left(DTestWindow) <= g_ScreenWidth - DControlAPI.Width(DTestWindow) then begin
        DControlAPI.SetLeft(DTestWindow, g_ScreenWidth - DControlAPI.Width(DTestWindow));
        StartShowWindow := False;
      end;
    end else begin
      if StartHideWindow then begin
        if DControlAPI.Left(DTestWindow) < g_ScreenWidth then begin
          DControlAPI.SetLeft(DTestWindow, DControlAPI.Left(DTestWindow) + 3);
          Dec(WindowAlpha, 2);
          if WindowAlpha < 0 then
            WindowAlpha := 0;
        end;
        if DControlAPI.Left(DTestWindow) >= g_ScreenWidth then begin
          DControlAPI.SetLeft(DTestWindow, g_ScreenWidth);
          StartHideWindow := False;
          WindowAlpha := 150;
        end;
      end;
    end;
  end;
end;
//------------------------------------------------------------------------------

procedure HookFormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if (X + 30 >= g_ScreenWidth) and (Y <= 300) then begin
    StartShowWindow := True;
    StartHideWindow := False;
    WindowAlpha := 150;
  end;
  if Assigned(OldHookFormMouseMove) then
    OldHookFormMouseMove(Sender, Shift, X, Y);
end;
//------------------------------------------------------------------------------

procedure HookDecodeMessagePacketStop(DefMsg: pTDefaultMessage; sData: PChar);
begin
  case DefMsg.wIdent of
    SM_LOGON: ; //��¼
    SM_NEWMAP: ; //�µ�ͼ
    SM_ABILITY: ; //��ȡ����
    SM_CHANGEMAP: ; //�ı��ͼ

    SM_SOFTCLOSE: begin //С��
        if MyWindow <> nil then
          DControlAPI.SetVisible(MyWindow, False); //�رմ���
      end;
  end;

  if Assigned(OldHookDecodeMessagePacketStop) then
    OldHookDecodeMessagePacketStop(DefMsg, sData);
end;
//------------------------------------------------------------------------------

procedure HookInitialize(Handle: THandle; FirstInit: Boolean; WindowMode: Boolean; ScreenWidth, ScreenHeight: Word; ClientVersion: TClientVersion);
var
  I: Integer;
  D: TDxControl;
  Images: Integer;
begin
  g_WindowMode := WindowMode;
  g_ScreenWidth := ScreenWidth;
  g_ScreenHeight := ScreenHeight;
  g_ClientVersion := ClientVersion;
  if FirstInit then begin //��һ�μ���
//==============================================================================
//===================�ڵ�¼���ڲ����洰���ϴ���һ����ť=========================
//==============================================================================
    D := DControlAPI.Create(GameInterfaceAPI.DBottomRight, t_Button); //�ڽ������ϴ���һ����ǩ
    DControlAPI.SetCaption(D, '�����ť'); //���ñ�ǩ����
    DButtonAPI.SetDefaultCaptionFontFColor(D, clLime);
    DButtonAPI.SetDefaultCaptionFontStyle(D, [fsBold]);
    DButtonAPI.SetDefaultCaptionFontBold(D, True);

    DButtonAPI.SetMouseMoveCaptionFontStyle(D, [fsBold]);
    DButtonAPI.SetMouseMoveCaptionFontBold(D, True);

    DButtonAPI.SetMouseDownCaptionFontFColor(D, clRed);
    DButtonAPI.SetMouseDownCaptionFontStyle(D, [fsBold]);
    DButtonAPI.SetMouseDownCaptionFontBold(D, True);

    DButtonAPI.SetCaptionDownOffsetX(D, 1);
    DButtonAPI.SetCaptionDownOffsetY(D, 1);

    DButtonAPI.SetClickCount(D, csGlass); //���ð�ť���������

    Images := ImagesAPI.GetHandle(PChar(string(GameAPI.ClientPath) + 'Data\Prguse2.wil')); //��ȡWIL���
    DControlAPI.SetImages(D, Images); //���ð�ťʹ��WIL
    DControlAPI.SetDefaultImageIndex(D, 590); //���ð�ť��ͼƬ���
    DControlAPI.SetMouseDownImageIndex(D, 591); //���ð�ť����ͼƬ���

    DControlAPI.SetLeft(D, DControlAPI.Width(GameInterfaceAPI.DBottomRight) - DControlAPI.Width(D) - 5);
    DControlAPI.SetTop(D, DControlAPI.Height(GameInterfaceAPI.DBottomRight) - DControlAPI.Height(D) - 55);

//���õ���¼�
    DControlAPI.SetOnClick(@OnClick, D);

//����˫���¼�
    DControlAPI.SetOnDblClick(@OnDblClick, D);

//������갴���¼�
    DControlAPI.SetOnMouseDown(@OnMouseDown, D);

//��������ƶ��¼�
    DControlAPI.SetOnMouseMove(@OnMouseMove, D);

//������굯���¼�
    DControlAPI.SetOnMouseUp(@OnMouseUp, D);

//�����������¼�
    DControlAPI.SetOnMouseEnter(@OnMouseEnter, D);

//��������뿪�¼�
    DControlAPI.SetOnMouseLeave(@OnMouseLeave, D);

//==============================================================================
//===================����һ�����ڲ��ڴ����ϴ���һ����ť=========================
//==============================================================================
    MyWindow := DControlAPI.Create(nil, t_Form); //����һ������
    if MyWindow <> nil then begin
      Images := ImagesAPI.GetHandle(PChar(string(GameAPI.ClientPath) + 'Data\Prguse.wil')); //��ȡWIL���
      DControlAPI.SetVisible(MyWindow, False); //����
      DControlAPI.SetImages(MyWindow, Images); //���ô���ʹ��WIL
      DControlAPI.SetDefaultImageIndex(MyWindow, 260); //���ô����ͼƬ���
      DControlAPI.SetAutoSize(D, True); //�Զ������ߴ�

      D := DControlAPI.Create(MyWindow, t_Button); //��MyWindow�����ϴ���һ����ť
      if D <> nil then begin
        Images := ImagesAPI.GetHandle(PChar(string(GameAPI.ClientPath) + 'Data\Prguse3.wil')); //��ȡWIL���
        DControlAPI.SetImages(D, Images); //���ð�ťʹ��WIL
        DControlAPI.SetDefaultImageIndex(D, 233); //���ð�ť��ͼƬ���
        DControlAPI.SetMouseDownImageIndex(D, 234); //���ð�ť����ͼƬ���
        DControlAPI.SetAutoSize(D, True); //�Զ������ߴ�

        DControlAPI.SetLeft(D, DControlAPI.Width(MyWindow) - DControlAPI.Width(D) - 2);
        DControlAPI.SetTop(D, 0);

        DButtonAPI.SetClickCount(D, csStone); //���ð�ť���������

        DControlAPI.SetOnClick(@OnClickCloseMyWindow, D);
      end;
    end;

//==============================================================================
//===================���ҵ�¼���ڲ�һ����ť���޸Ĵ˰�ť�ĵ����¼�===============
//==============================================================================
    for I := 0 to DControlAPI.ControlCount(GameInterfaceAPI.DBottomRight) - 1 do begin //���ҽ������ϵĸ����̵갴ť
      D := DControlAPI.Controls(GameInterfaceAPI.DBottomRight, I);
      if string(DControlAPI.Name(D)) = 'DBotUserShop' then begin //�����̵갴ť
        DControlAPI.SetOnClick(@OnClick, D);
        break;
      end;
    end;

//==============================================================================
//=================================����һ������=================================
//==============================================================================
    DTestWindow := DControlAPI.Create(nil, t_Form); //����һ������
    if DTestWindow <> nil then begin
      LeaveWindowTick := GetTickCount;
      DControlAPI.SetWidth(DTestWindow, 300);
      DControlAPI.SetHeight(DTestWindow, 300);
      DControlAPI.SetLeft(DTestWindow, ScreenWidth - DControlAPI.Width(DTestWindow)); //
      DControlAPI.SetTop(DTestWindow, 0);
      DControlAPI.SetFloating(DTestWindow, False);

      DControlAPI.SetOnPaint(@OnWindowPaint, DTestWindow);
      DControlAPI.SetOnMouseEnter(@OnWindowMouseEnter, DTestWindow);
      DControlAPI.SetOnMouseLeave(@OnWindowMouseLeave, DTestWindow);
      DControlAPI.SetOnPress(@OnWindowPress, DTestWindow);
    end;
  end;

  if Assigned(OldHookInitialize) then
    OldHookInitialize(Handle, FirstInit, WindowMode, ScreenWidth, ScreenHeight, ClientVersion);
end;
//------------------------------------------------------------------------------

procedure HookFinalize();
begin
  if Assigned(OldHookFinalize) then
    OldHookFinalize();
end;

end.

