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

procedure OnClickCloseMyWindow(ObjSelf: TObject; Sender: TObject; X, Y: Integer); stdcall; //单击事件
begin
  if MyWindow <> nil then
    DControlAPI.SetVisible(MyWindow, False);
end;
//------------------------------------------------------------------------------

procedure OnClick(ObjSelf: TObject; Sender: TObject; X, Y: Integer); stdcall; //单击事件
begin
  GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnClick'), 255, 253);
  //GameAPI.AddTopChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnClick'), 250, 253, 10);
  //GameAPI.DMessageDlg(PChar(string(DControlAPI.Name(Sender)) + ' OnClick'), [mbOK]);
  if MyWindow <> nil then
    DControlAPI.SetVisible(MyWindow, not DControlAPI.Visible(MyWindow));
end;
//------------------------------------------------------------------------------

procedure OnDblClick(ObjSelf: TObject; Sender: TObject; X, Y: Integer); stdcall; //双击事件
begin
  GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnDblClick'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnShow(ObjSelf: TObject; Sender: TObject); stdcall; //显示事件
begin
  GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnShow'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnHide(ObjSelf: TObject; Sender: TObject); stdcall; //隐藏事件
begin

end;
//------------------------------------------------------------------------------

procedure OnMouseDown(ObjSelf: TObject; Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); stdcall; //鼠标按下事件
begin
  GameAPI.AddChatBoardString(PChar('OnMouseDown'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseMove(ObjSelf: TObject; Sender: TObject; Shift: TShiftState; X, Y: Integer); stdcall; //鼠标移动事件
begin
  //GameAPI.AddChatBoardString(PChar(string(DControlAPI.Name(Sender)) + ' OnMouseMove'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseUp(ObjSelf: TObject; Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); stdcall; //鼠标弹起事件
begin
  GameAPI.AddChatBoardString(PChar('OnMouseUp'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseEnter(ObjSelf: TObject; Sender: TObject); stdcall; //鼠标进入事件
begin
  GameAPI.AddChatBoardString(PChar('OnMouseEnter'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnMouseLeave(ObjSelf: TObject; Sender: TObject); stdcall; //鼠标离开事件
begin
  GameAPI.AddChatBoardString(PChar('OnMouseLeave'), 255, 253);
end;
//------------------------------------------------------------------------------

procedure OnStartPaint(ObjSelf: TObject; Sender: TObject); stdcall; //开始绘制事件
begin

end;
//------------------------------------------------------------------------------

procedure OnStartSubPaint(ObjSelf: TObject; Sender: TObject); stdcall; //开始绘制子控件事件
begin

end;
//------------------------------------------------------------------------------

procedure OnStopPaint(ObjSelf: TObject; Sender: TObject); stdcall; //绘制结束事件
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
  DrawAPI.BoldTextOut(DrawAPI.CurrentFont, 550, 30, '鼠标移动到红色矩形里可以显示窗口', clRed, clBlack);
end;

procedure OnWindowPaint(ObjSelf: TObject; Sender: TObject); stdcall; //绘制事件
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

    DrawAPI.BoldTextOut(DrawAPI.CurrentFont, DestRect.Left + (DControlAPI.Width(DTestWindow) - DrawAPI.TextWidth(DrawAPI.CurrentFont, PChar('插件功能演示'))) div 2, DestRect.Top + 230, '插件功能演示', clLime, clBlack);
  end;
end;
//------------------------------------------------------------------------------

procedure OnWindowMouseEnter(ObjSelf: TObject; Sender: TObject); stdcall; //鼠标进入事件
begin
  WindowMouseLeave := False;
  StartShowWindow := True;
end;
//------------------------------------------------------------------------------

procedure OnWindowMouseLeave(ObjSelf: TObject; Sender: TObject); stdcall; //鼠标离开事件
begin
  WindowMouseLeave := True;
  LeaveWindowTick := GetTickCount;
end;
//------------------------------------------------------------------------------

procedure OnWindowPress(ObjSelf: TObject; Sender: TObject); stdcall; //运行事件
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
    SM_LOGON: ; //登录
    SM_NEWMAP: ; //新地图
    SM_ABILITY: ; //获取属性
    SM_CHANGEMAP: ; //改变地图

    SM_SOFTCLOSE: begin //小退
        if MyWindow <> nil then
          DControlAPI.SetVisible(MyWindow, False); //关闭窗体
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
  if FirstInit then begin //第一次加载
//==============================================================================
//===================在登录器内部界面窗口上创建一个按钮=========================
//==============================================================================
    D := DControlAPI.Create(GameInterfaceAPI.DBottomRight, t_Button); //在界面右上创建一个标签
    DControlAPI.SetCaption(D, '插件按钮'); //设置标签标题
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

    DButtonAPI.SetClickCount(D, csGlass); //设置按钮点击的声音

    Images := ImagesAPI.GetHandle(PChar(string(GameAPI.ClientPath) + 'Data\Prguse2.wil')); //获取WIL句柄
    DControlAPI.SetImages(D, Images); //设置按钮使用WIL
    DControlAPI.SetDefaultImageIndex(D, 590); //设置按钮的图片序号
    DControlAPI.SetMouseDownImageIndex(D, 591); //设置按钮按下图片序号

    DControlAPI.SetLeft(D, DControlAPI.Width(GameInterfaceAPI.DBottomRight) - DControlAPI.Width(D) - 5);
    DControlAPI.SetTop(D, DControlAPI.Height(GameInterfaceAPI.DBottomRight) - DControlAPI.Height(D) - 55);

//设置点击事件
    DControlAPI.SetOnClick(@OnClick, D);

//设置双击事件
    DControlAPI.SetOnDblClick(@OnDblClick, D);

//设置鼠标按下事件
    DControlAPI.SetOnMouseDown(@OnMouseDown, D);

//设置鼠标移动事件
    DControlAPI.SetOnMouseMove(@OnMouseMove, D);

//设置鼠标弹起事件
    DControlAPI.SetOnMouseUp(@OnMouseUp, D);

//设置鼠标进入事件
    DControlAPI.SetOnMouseEnter(@OnMouseEnter, D);

//设置鼠标离开事件
    DControlAPI.SetOnMouseLeave(@OnMouseLeave, D);

//==============================================================================
//===================创建一个窗口并在窗口上创建一个按钮=========================
//==============================================================================
    MyWindow := DControlAPI.Create(nil, t_Form); //创建一个窗体
    if MyWindow <> nil then begin
      Images := ImagesAPI.GetHandle(PChar(string(GameAPI.ClientPath) + 'Data\Prguse.wil')); //获取WIL句柄
      DControlAPI.SetVisible(MyWindow, False); //隐藏
      DControlAPI.SetImages(MyWindow, Images); //设置窗体使用WIL
      DControlAPI.SetDefaultImageIndex(MyWindow, 260); //设置窗体的图片序号
      DControlAPI.SetAutoSize(D, True); //自动调整尺寸

      D := DControlAPI.Create(MyWindow, t_Button); //在MyWindow窗体上创建一个按钮
      if D <> nil then begin
        Images := ImagesAPI.GetHandle(PChar(string(GameAPI.ClientPath) + 'Data\Prguse3.wil')); //获取WIL句柄
        DControlAPI.SetImages(D, Images); //设置按钮使用WIL
        DControlAPI.SetDefaultImageIndex(D, 233); //设置按钮的图片序号
        DControlAPI.SetMouseDownImageIndex(D, 234); //设置按钮按下图片序号
        DControlAPI.SetAutoSize(D, True); //自动调整尺寸

        DControlAPI.SetLeft(D, DControlAPI.Width(MyWindow) - DControlAPI.Width(D) - 2);
        DControlAPI.SetTop(D, 0);

        DButtonAPI.SetClickCount(D, csStone); //设置按钮点击的声音

        DControlAPI.SetOnClick(@OnClickCloseMyWindow, D);
      end;
    end;

//==============================================================================
//===================查找登录器内部一个按钮并修改此按钮的单击事件===============
//==============================================================================
    for I := 0 to DControlAPI.ControlCount(GameInterfaceAPI.DBottomRight) - 1 do begin //查找界面右上的个人商店按钮
      D := DControlAPI.Controls(GameInterfaceAPI.DBottomRight, I);
      if string(DControlAPI.Name(D)) = 'DBotUserShop' then begin //个人商店按钮
        DControlAPI.SetOnClick(@OnClick, D);
        break;
      end;
    end;

//==============================================================================
//=================================创建一个窗口=================================
//==============================================================================
    DTestWindow := DControlAPI.Create(nil, t_Form); //创建一个窗体
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

