unit ClientAPI;
{$I PlugIn.inc}
interface
uses
  ClientType;
type
  TImagesAPI = record
    GetHandle: function(const FileName: _PCHAR): THandle; stdcall; //��ȡWIL�ļ�
    Count: function(FileHandle: THandle): Integer; stdcall; //wilͼƬ��
    Read: function(FileHandle: THandle; Index: Integer; var X, Y: Integer): TTexture; stdcall; //��ȡͼƬ����
    Clear: procedure(FileHandle: THandle); stdcall;
  end;
  pTImagesAPI = ^TImagesAPI;

  TTextureAPI = record
    Width: function(Texture: TTexture): Integer; stdcall;
    Height: function(Texture: TTexture): Integer; stdcall;
    Pixels: function(Texture: TTexture; X, Y: Integer): Cardinal; stdcall;
    Lock: function(Texture: TTexture; Rect: TRect; out Bits: Pointer; out Pitch: Integer; ReadOnly: Boolean): Boolean; stdcall;
    Unlock: procedure(Texture: TTexture); stdcall;
  end;
  pTTextureAPI = ^TTextureAPI;

  TDControl = record
    Create: function(Parent: TDxControl; InterfaceType: TGuiType): TDxControl; stdcall; //����
    InterfaceType: function(D: TDxControl): TGuiType; stdcall; //����
    Name: function(D: TDxControl): _PCHAR; stdcall; //����
    Left: function(D: TDxControl): Integer; stdcall; //��
    Top: function(D: TDxControl): Integer; stdcall; //��
    Width: function(D: TDxControl): Integer; stdcall; //��
    Height: function(D: TDxControl): Integer; stdcall; //��
    Tag: function(D: TDxControl): Integer; stdcall; //��־
    Visible: function(D: TDxControl): Boolean; stdcall; //�Ƿ�ɼ�
    Enabled: function(D: TDxControl): Boolean; stdcall; //�Ƿ����
    Floating: function(D: TDxControl): Boolean; stdcall; //�Ƿ�����ƶ�
    ParentMove: function(D: TDxControl): Boolean; stdcall; //Parent�Ƿ�����ƶ�
    EnableFocus: function(D: TDxControl): Boolean; stdcall; //�Ƿ�������ý���
    AutoSize: function(D: TDxControl): Boolean; stdcall; //�Ƿ����ͼƬ�ߴ��Զ������ߴ�
    DrawBorder: function(D: TDxControl): Boolean; stdcall; //���Ʊ߿�
    Caption: function(D: TDxControl): _PCHAR; stdcall; //����
    Alignment: function(D: TDxControl): TAlignment; stdcall; //������ʾλ��
    Transparent: function(D: TDxControl): Boolean; stdcall; //�Ƿ�͸��
    BackgroundColor: function(D: TDxControl): TColor; stdcall; //����ɫ
    PopupMenu: function(D: TDxControl): TDxControl; stdcall; //�����˵�
    VisibleRect: procedure(D: TDxControl; var Value: TRect); stdcall; //����ɼ�����
    VirtualRect: procedure(D: TDxControl; var Value: TRect); stdcall; //�����������


    OnShow: function(D: TDxControl): Pointer; stdcall; //��ʾ�����¼�
    OnHide: function(D: TDxControl): Pointer; stdcall; //���ش����¼�
    OnKeyDown: function(D: TDxControl): Pointer; stdcall; //���������¼�
    OnKeyPress: function(D: TDxControl): Pointer; stdcall; //�����¼�
    OnKeyUp: function(D: TDxControl): Pointer; stdcall; //���������¼�
    OnClick: function(D: TDxControl): Pointer; stdcall; //�����¼�
    OnDblClick: function(D: TDxControl): Pointer; stdcall; //˫���¼�
    OnMouseDown: function(D: TDxControl): Pointer; stdcall; //��갴���¼�
    OnMouseMove: function(D: TDxControl): Pointer; stdcall; //����ƶ��¼�
    OnMouseUp: function(D: TDxControl): Pointer; stdcall; //��굯���¼�
    OnMouseEnter: function(D: TDxControl): Pointer; stdcall; //�������¼�
    OnMouseLeave: function(D: TDxControl): Pointer; stdcall; //����뿪�¼�
    OnInRealArea: function(D: TDxControl): Pointer; stdcall; //�����������¼�
    OnPaint: function(D: TDxControl): Pointer; stdcall; //�����¼�
    OnStartPaint: function(D: TDxControl): Pointer; stdcall; //��ʼ�����¼�
    OnStartSubPaint: function(D: TDxControl): Pointer; stdcall; //��ʼ�����ӿؼ��¼�
    OnStopPaint: function(D: TDxControl): Pointer; stdcall; //���ƽ����¼�
    OnPress: function(D: TDxControl): Pointer; stdcall; //�����¼�

//------------------------------------------------------------------------------
    SetName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //����
    SetLeft: procedure(D: TDxControl; Value: Integer); stdcall;
    SetTop: procedure(D: TDxControl; Value: Integer); stdcall;
    SetWidth: procedure(D: TDxControl; Value: Integer); stdcall;
    SetHeight: procedure(D: TDxControl; Value: Integer); stdcall;
    SetTag: procedure(D: TDxControl; Value: Integer); stdcall;
    SetVisible: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetEnabled: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetFloating: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetParentMove: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetEnableFocus: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetAutoSize: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetDrawBorder: procedure(D: TDxControl; Value: Boolean); stdcall; //���Ʊ߿�
    SetCaption: procedure(D: TDxControl; Value: _PCHAR); stdcall;
    SetAlignment: procedure(D: TDxControl; Value: TAlignment); stdcall;
    SetTransparent: procedure(D: TDxControl; Value: Boolean); stdcall; //�Ƿ�͸��
    SetBackgroundColor: procedure(D: TDxControl; Value: TColor); stdcall; //����ɫ
    SetPopupMenu: procedure(D: TDxControl; Value: TDxControl); stdcall;

    SetDefaultBorderColor: procedure(D: TDxControl; Value: TColor); stdcall; //����Ĭ�ϱ߿���ɫ
    SetDefaultBorderBold: procedure(D: TDxControl; Value: Boolean); stdcall; //����Ĭ�ϱ߿��Ƿ�Ӵ�
    SetMouseMoveBorderColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ñ߿�����ƶ���ɫ
    SetMouseMoveBorderBold: procedure(D: TDxControl; Value: Boolean); stdcall; //���ñ߿�����ƶ��Ƿ�Ӵ�
    SetMouseDownBorderColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ñ߿���갴����ɫ
    SetMouseDownBorderBold: procedure(D: TDxControl; Value: Boolean); stdcall; //���ñ߿���갴���Ƿ�Ӵ�
    SetDisabledBorderColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ñ߿򲻿���ʱ��ɫ
    SetDisabledBorderBold: procedure(D: TDxControl; Value: Boolean); stdcall; //���ñ߿򲻿���ʱ�Ƿ�Ӵ�

    SetImages: procedure(D: TDxControl; Value: THandle); stdcall; //���ÿؼ�ʹ��WILͼ��
    SetDefaultImageIndex: procedure(D: TDxControl; Value: Integer); stdcall; //����Ĭ��ͼ����
    SetMouseMoveImageIndex: procedure(D: TDxControl; Value: Integer); stdcall; //��������ƶ�ͼ����
    SetMouseDownImageIndex: procedure(D: TDxControl; Value: Integer); stdcall; //������갴��ͼ����
    SetDisabledImageIndex: procedure(D: TDxControl; Value: Integer); stdcall; //���ò�����ʱͼ����

    SetOnShow: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnHide: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnKeyDown: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnKeyPress: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnKeyUp: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnClick: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnDblClick: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnMouseDown: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnMouseMove: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnMouseUp: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnMouseEnter: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnMouseLeave: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnInRealArea: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnPaint: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnStartPaint: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnStartSubPaint: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnStopPaint: procedure(ProCode: Pointer; D: TDxControl); stdcall;
    SetOnPress: procedure(ProCode: Pointer; D: TDxControl); stdcall;
//-----------------------------------------------------------------------------
    Parent: function(D: TDxControl): TDxControl; stdcall; //��ʾ�����ؼ� ΪNILʱΪ������
    SetParent: procedure(D, Value: TDxControl); stdcall; //������ʾ�����ؼ� ΪNILʱΪ������
    ControlCount: function(D: TDxControl): Integer; stdcall; //�ӿؼ���
    Controls: function(D: TDxControl; Index: Integer): TDxControl; stdcall; //��ȡ�ӿؼ�

    SetFocus: procedure(D: TDxControl); stdcall; //����Ϊ����
    BringToFront: procedure(D: TDxControl); stdcall; //��ʾ�����ϲ�
    InRange: function(D: TDxControl; X, Y: Integer): Boolean; stdcall; //�������Ƿ��ڷ�Χ
  end;
  pTDControl = ^TDControl;


  TDWindow = record
    SetIsBringToFront: procedure(D: TDxControl; Value: Boolean); stdcall; //���������Ƿ���ʾ�����ϲ�
    ShowModalEx: function(D: TDxControl): Integer; stdcall;
    ShowModalA: function(D: TDxControl): Integer; stdcall;
    ShowModalB: function(ProCode: Pointer; D: TDxControl): Integer; stdcall;
  end;
  pTDWindow = ^TDWindow;

  TDButton = record //TDLabel Ҳ����ʹ��
    Style: function(D: TDxControl): TButtonStyle; stdcall; //��ť��ʽ
    Checked: function(D: TDxControl): Boolean; stdcall;
//-----------------------------------------------------------------------------
    SetDefaultCaptionFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //����Ĭ�ϱ���������ɫ
    SetDefaultCaptionFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //����Ĭ�ϱ������������ɫ
    SetDefaultCaptionFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //����Ĭ��������ʽ
    SetDefaultCaptionFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //����Ĭ������ߴ�
    SetDefaultCaptionFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //����Ĭ�������Ƿ����
    SetDefaultCaptionFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //����Ĭ����������

    SetMouseMoveCaptionFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //��������ƶ�����������ɫ
    SetMouseMoveCaptionFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //��������ƶ��������������ɫ
    SetMouseMoveCaptionFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //��������ƶ�������ʽ
    SetMouseMoveCaptionFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //��������ƶ�����ߴ�
    SetMouseMoveCaptionFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //��������ƶ������Ƿ����
    SetMouseMoveCaptionFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //��������ƶ���������

    SetMouseDownCaptionFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //������갴�±���������ɫ
    SetMouseDownCaptionFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //������갴�±������������ɫ
    SetMouseDownCaptionFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //������갴��������ʽ
    SetMouseDownCaptionFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //������갴������ߴ�
    SetMouseDownCaptionFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //������갴�������Ƿ����
    SetMouseDownCaptionFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //������갴����������

    SetDisabledCaptionFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ò�����ʱ����������ɫ
    SetDisabledCaptionFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ò�����ʱ�������������ɫ
    SetDisabledCaptionFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //���ò�����ʱ������ʽ
    SetDisabledCaptionFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //���ò�����ʱ����ߴ�
    SetDisabledCaptionFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //���ò�����ʱ�����Ƿ����
    SetDisabledCaptionFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //���ò�����ʱ��������

    SetCheckedCaptionFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ù�ѡʱ����������ɫ
    SetCheckedCaptionFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ù�ѡʱ�������������ɫ
    SetCheckedCaptionFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //���ù�ѡʱ������ʽ
    SetCheckedCaptionFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //���ù�ѡʱ����ߴ�
    SetCheckedCaptionFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //���ù�ѡʱ�����Ƿ����
    SetCheckedCaptionFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //���ù�ѡʱ��������

    SetStyle: procedure(D: TDxControl; Value: TButtonStyle); stdcall; //��ť��ʽ
    SetChecked: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetCaptionDownOffsetX: procedure(D: TDxControl; Value: Integer); stdcall; //���º����ƫ��X
    SetCaptionDownOffsetY: procedure(D: TDxControl; Value: Integer); stdcall; //���º����ƫ��Y
    SetButtonDownOffsetX: procedure(D: TDxControl; Value: Integer); stdcall; //���º�ƫ��X
    SetButtonDownOffsetY: procedure(D: TDxControl; Value: Integer); stdcall; //���º�ƫ��Y
    SetClickCount: procedure(D: TDxControl; Value: TClickSound); stdcall; //��ť���������
  end;
  pTDButton = ^TDButton;

  TDEdit = record
    Text: function(D: TDxControl): _PCHAR; stdcall;
    Value: function(D: TDxControl): Integer; stdcall;
    ReadOnly: function(D: TDxControl): Boolean; stdcall; //�Ƿ�ֻ��
    MaxLength: function(D: TDxControl): Integer; stdcall; //��󳤶�
    SelectedColor: function(D: TDxControl): TColor; stdcall; //�����ɫ
    SelBackColor: function(D: TDxControl): TColor; stdcall; //ѡ�����屳��ɫ
    SelFontColor: function(D: TDxControl): TColor; stdcall; //ѡ������ɫ
    PasswordChar: function(D: TDxControl): Char; stdcall;
    AllowSelect: function(D: TDxControl): Boolean; stdcall; //�Ƿ�����ѡ��
    AllowPaste: function(D: TDxControl): Boolean; stdcall; //�Ƿ�����ճ��
    InValue: function(D: TDxControl): TInValue; stdcall; //�����������
    TabOrder: function(D: TDxControl): Integer; stdcall;
    OnChange: function(D: TDxControl): Pointer; stdcall; //�����ı䴥��
//-----------------------------------------------------------------------------
    SetText: procedure(D: TDxControl; Value: _PCHAR); stdcall;
    SetValue: procedure(D: TDxControl; Value: Integer); stdcall;
    SetReadOnly: procedure(D: TDxControl; Value: Boolean); stdcall; //�Ƿ�ֻ��
    SetMaxLength: procedure(D: TDxControl; Value: Integer); stdcall; //��󳤶�
    SetSelectedColor: procedure(D: TDxControl; Value: TColor); stdcall; //�����ɫ
    SetSelBackColor: procedure(D: TDxControl; Value: TColor); stdcall; //ѡ�����屳��ɫ
    SetSelFontColor: procedure(D: TDxControl; Value: TColor); stdcall; //ѡ������ɫ
    SetPasswordChar: procedure(D: TDxControl; Value: Char); stdcall;
    SetAllowSelect: procedure(D: TDxControl; Value: Boolean); stdcall; //�Ƿ�����ѡ��
    SetAllowPaste: procedure(D: TDxControl; Value: Boolean); stdcall; //�Ƿ�����ճ��
    SetInValue: procedure(D: TDxControl; Value: TInValue); stdcall; //�����������
    SetTabOrder: procedure(D: TDxControl; Value: Integer); stdcall;
    SetOnChange: procedure(ProCode: Pointer; D: TDxControl); stdcall;
//-----------------------------------------------------------------------------
  end;
  pTDEdit = ^TDEdit;

  TDGrid = record
    ColCount: function(D: TDxControl): Integer; stdcall; //����
    RowCount: function(D: TDxControl): Integer; stdcall; //����
    ColWidth: function(D: TDxControl): Integer; stdcall; //�п�
    RowHeight: function(D: TDxControl): Integer; stdcall; //���

    OnGridSelect: function(D: TDxControl): Pointer; stdcall; //ѡ���¼�
    OnGridMouseMove: function(D: TDxControl): Pointer; stdcall; //����ƶ��¼�
    OnGridPaint: function(D: TDxControl): Pointer; stdcall; //�����¼�
//-----------------------------------------------------------------------------

    SetColCount: procedure(D: TDxControl; Value: Integer); stdcall; //����
    SetRowCount: procedure(D: TDxControl; Value: Integer); stdcall; //����
    SetColWidth: procedure(D: TDxControl; Value: Integer); stdcall; //�п�
    SetRowHeight: procedure(D: TDxControl; Value: Integer); stdcall; //���

    SetOnGridSelect: procedure(ProCode: Pointer; D: TDxControl); stdcall; //ѡ���¼�
    SetOnGridMouseMove: procedure(ProCode: Pointer; D: TDxControl); stdcall; //����ƶ��¼�
    SetOnGridPaint: procedure(ProCode: Pointer; D: TDxControl); stdcall; //�����¼�

    DrawGridItem: procedure(ARect: TRect; Item: pTClientItem; Effect: pTDrawItemEffect); stdcall; //����������Ʒ
  end;
  pTDGrid = ^TDGrid;

  TDComboBox = record
    ItemIndex: function(D: TDxControl): Integer; stdcall; //��ǰѡ����
    Items: function(D: TDxControl): TStringList; stdcall; //�б�
    Text: function(D: TDxControl): _PCHAR; stdcall;
    OnSelect: function(D: TDxControl): Pointer; stdcall;

    SetShowButton: procedure(D: TDxControl; Value: Boolean); stdcall; //�Ƿ���ʾ��ť
    SetItemIndex: procedure(D: TDxControl; Value: Integer); stdcall; //��ǰѡ����
    SetButtonColor: procedure(D: TDxControl; Value: TColor); stdcall; //��ť��ɫ
    SetItems: procedure(D: TDxControl; Value: TStringList); stdcall; //�б�
    SetText: procedure(D: TDxControl; Value: _PCHAR); stdcall;
    SetOnSelect: procedure(ProCode: Pointer; D: TDxControl); stdcall;

    SetDefaultTextFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //����Ĭ�ϱ���������ɫ
    SetDefaultTextFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //����Ĭ�ϱ������������ɫ
    SetDefaultTextFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //����Ĭ��������ʽ
    SetDefaultTextFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //����Ĭ������ߴ�
    SetDefaultTextFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //����Ĭ���Ƿ����
    SetDefaultTextFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //����Ĭ����������

    SetMouseMoveTextFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //��������ƶ�����������ɫ
    SetMouseMoveTextFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //��������ƶ��������������ɫ
    SetMouseMoveTextFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //��������ƶ�������ʽ
    SetMouseMoveTextFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //��������ƶ�����ߴ�
    SetMouseMoveTextFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //��������ƶ������Ƿ����
    SetMouseMoveTextFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //��������ƶ���������

    SetMouseDownTextFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //������갴�±���������ɫ
    SetMouseDownTextFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //������갴�±������������ɫ
    SetMouseDownTextFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //������갴��������ʽ
    SetMouseDownTextFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //������갴������ߴ�
    SetMouseDownTextFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //������갴�������Ƿ����
    SetMouseDownTextFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //������갴����������

    SetDisabledTextFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ò�����ʱ����������ɫ
    SetDisabledTextFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ò�����ʱ�������������ɫ
    SetDisabledTextFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //���ò�����ʱ������ʽ
    SetDisabledTextFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //���ò�����ʱ����ߴ�
    SetDisabledTextFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //���ò�����ʱ�����Ƿ����
    SetDisabledTextFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //���ò�����ʱ��������
  end;
  pTDComboBox = ^TDComboBox;

  TDxItemMenuList = TObject;

  TItemMenuListAPI = record //TDxItemMenuList ���API
    Count: function(List: TDxItemMenuList): Integer; stdcall;
    Add: procedure(List: TDxItemMenuList; S: _PCHAR); stdcall;
    AddObject: procedure(List: TDxItemMenuList; S: _PCHAR; AObject: TObject); stdcall;
    Get: function(List: TDxItemMenuList; Index: Integer): _PCHAR; stdcall;
    GetObject: function(List: TDxItemMenuList; Index: Integer): TObject; stdcall;
    Delete: procedure(List: TDxItemMenuList; Index: Integer); stdcall;
    Clear: procedure(List: TDxItemMenuList); stdcall;
  end;

  TDPopupMenu = record
    ItemIndex: function(D: TDxControl): Integer; stdcall; //ѡ����
    ItemHeight: function(D: TDxControl): Integer; stdcall; //���
    Items: function(D: TDxControl): TDxItemMenuList; stdcall; //�б�
//-----------------------------------------------------------------------------
    SetSelectColor: procedure(D: TDxControl; Value: TColor); stdcall; //ѡ����ɫ
    SetItemIndex: procedure(D: TDxControl; Value: Integer); stdcall; //ѡ����
    SetItemHeight: procedure(D: TDxControl; Value: Integer); stdcall; //���
    SetAlpha: procedure(D: TDxControl; Value: Byte); stdcall; //����͸����

    SetDefaultItemFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //����Ĭ�ϱ���������ɫ
    SetDefaultItemFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //����Ĭ�ϱ������������ɫ
    SetDefaultItemFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //����Ĭ��������ʽ
    SetDefaultItemFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //����Ĭ������ߴ�
    SetDefaultItemFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //����Ĭ�������Ƿ����
    SetDefaultItemFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //����Ĭ����������

    SetMouseMoveItemFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //��������ƶ�����������ɫ
    SetMouseMoveItemFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //��������ƶ��������������ɫ
    SetMouseMoveItemFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //��������ƶ�������ʽ
    SetMouseMoveItemFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //��������ƶ�����ߴ�
    SetMouseMoveItemFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //��������ƶ������Ƿ����
    SetMouseMoveItemFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //��������ƶ���������

    SetMouseDownItemFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //������갴�±���������ɫ
    SetMouseDownItemFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //������갴�±������������ɫ
    SetMouseDownItemFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //������갴��������ʽ
    SetMouseDownItemFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //������갴������ߴ�
    SetMouseDownItemFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //������갴�������Ƿ����
    SetMouseDownItemFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //������갴����������

    SetDisabledItemFontFColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ò�����ʱ����������ɫ
    SetDisabledItemFontBColor: procedure(D: TDxControl; Value: TColor); stdcall; //���ò�����ʱ�������������ɫ
    SetDisabledItemFontStyle: procedure(D: TDxControl; Value: TFontStyles); stdcall; //���ò�����ʱ������ʽ
    SetDisabledItemFontSize: procedure(D: TDxControl; Value: Integer); stdcall; //���ò�����ʱ����ߴ�
    SetDisabledItemFontBold: procedure(D: TDxControl; Value: Boolean); stdcall; //���ò�����ʱ�����Ƿ����
    SetDisabledItemFontName: procedure(D: TDxControl; Value: _PCHAR); stdcall; //���ò�����ʱ��������
  end;
  pTDPopupMenu = ^TDPopupMenu;

  TDPageControl = record //��ҳ��ؼ�
    PageCount: function(D: TDxControl): Integer; stdcall;
    ShowButton: function(D: TDxControl): Boolean; stdcall;
    ActivePageIndex: function(D: TDxControl): Integer; stdcall;
    ButtonWidth: function(D: TDxControl): Integer; stdcall;
    ButtonHeight: function(D: TDxControl): Integer; stdcall;
    TabSheetLeft: function(D: TDxControl): Integer; stdcall;
    TabSheetTop: function(D: TDxControl): Integer; stdcall;
    TabSheetWidth: function(D: TDxControl): Integer; stdcall;
    TabSheetHeight: function(D: TDxControl): Integer; stdcall;
    AddTabSheet: function(D: TDxControl): TDxControl; stdcall;

    SetShowButton: procedure(D: TDxControl; Value: Boolean); stdcall;
    SetActivePageIndex: procedure(D: TDxControl; Value: Integer); stdcall;
    SetButtonWidth: procedure(D: TDxControl; Value: Integer); stdcall;
    SetButtonHeight: procedure(D: TDxControl; Value: Integer); stdcall;
    SetOffSetX: procedure(D: TDxControl; Value: Integer); stdcall;
    SetOffSetY: procedure(D: TDxControl; Value: Integer); stdcall;
    SetTabSheetLeft: procedure(D: TDxControl; Value: Integer); stdcall;
    SetTabSheetTop: procedure(D: TDxControl; Value: Integer); stdcall;
    SetTabSheetWidth: procedure(D: TDxControl; Value: Integer); stdcall;
    SetTabSheetHeight: procedure(D: TDxControl; Value: Integer); stdcall;

  end;
  pTDPageControl = ^TDPageControl;

  TDProgressBar = record //������
    Orientation: function(D: TDxControl): TProgressBarOrientation; stdcall; //��ʾ��ʽ
    Position: function(D: TDxControl): LongWord; stdcall; //����
    Max: function(D: TDxControl): LongWord; stdcall; //���ֵ
    SetShowCapTion: procedure(D: TDxControl; Value: Boolean); stdcall; //��ʾ�ٷֱ�
    SetPosition: procedure(D: TDxControl; Value: Integer); stdcall;
    SetMax: procedure(D: TDxControl; Value: Integer); stdcall;
    SetBarImages: procedure(D: TDxControl; Value: THandle); stdcall; //������ͼ��
    SetBarImageIndex: procedure(D: TDxControl; Value: Integer); stdcall; //������ͼ����
  end;
  pTDProgressBar = ^TDProgressBar;

  TInterfaceAPI = record //�������API
    DControl: TDControl;
    DWindow: TDWindow;
    DButton: TDButton;
    DEdit: TDEdit;
    DGrid: TDGrid;
    DComboBox: TDComboBox;
    DPopupMenu: TDPopupMenu;
    DPageControl: TDPageControl; //��ҳ��
    DProgressBar: TDProgressBar; //������
  end;
  pTInterfaceAPI = ^TInterfaceAPI;

  TGameInterfaceAPI = record //�ͻ����ڲ�����
    DMainMenu: function: TDxControl; stdcall; //�Ҽ������˵�
    DLoginDlg: function: TDxControl; stdcall; //��¼��������
    DRandomCodeDlg: function: TDxControl; stdcall; //����봰��
    DLogin: function: TDxControl; stdcall; //��¼�Ի��򴰿�
    DNewAccount: function: TDxControl; stdcall; //ע���ʺŴ���
    DChgPw: function: TDxControl; stdcall; //�޸����봰��
    DSelServerDlg: function: TDxControl; stdcall; //ѡ���������������
    DServerDlg: function: TDxControl; stdcall; //ѡ�����������
    DDoorDlg: function: TDxControl; stdcall; //����ʱ�ı�������
    DSelectChr: function: TDxControl; stdcall; //ѡ���ɫ��������
    DCreateChr: function: TDxControl; stdcall; //������ɫ����
    DDeleteHumanDlg: function: TDxControl; stdcall; //�ָ���ɫ����
    DNoticeDlg: function: TDxControl; stdcall; //���洰��
    DMerchantDlg: function: TDxControl; stdcall; //NPC�Ի���
    DBottomLeft: function: TDxControl; stdcall; //��Ϸ������
    DBottomCenter: function: TDxControl; stdcall; //��Ϸ������
    DBottomRight: function: TDxControl; stdcall; //��Ϸ������
    DItemBag: function: TDxControl; stdcall; //��������
    DStateWin: function: TDxControl; stdcall; //�������Դ��� �Լ�
    DUserState1: function: TDxControl; stdcall; //�������Դ��� �鿴�Է�
    DHeroStateWin: function: TDxControl; stdcall; //Ӣ�����Դ���
    DHeroStateDlg: function: TDxControl; stdcall; //Ӣ��״̬����
    DHeroItemBag: function: TDxControl; stdcall; //Ӣ�۰�������
    DMenuDlg: function: TDxControl; stdcall; // NPC�б��
    DSellDlg: function: TDxControl; stdcall; //OK��
    DDealDlg: function: TDxControl; stdcall; //���׶Ի��� �Լ�
    DDealRemoteDlg: function: TDxControl; stdcall; //���׶Ի��� �Է�
    DShopDlg: function: TDxControl; stdcall; //���̴���
    DGroupDlg: function: TDxControl; stdcall; //��Ӵ���
    DRankingDlg: function: TDxControl; stdcall; //���а񴰿�
    DGuildDlg: function: TDxControl; stdcall; //�лᴰ��
    DGuildEditNotice: function: TDxControl; stdcall; //�л�༭����
    DAdjustAbility: function: TDxControl; stdcall; //�������Դ���
    DMissionDlg: function: TDxControl; stdcall; //�����ռǴ���
  end;
  pTGameInterfaceAPI = ^TGameInterfaceAPI;

  TListAPI = record
    Create: function: TList; stdcall;
    Free: procedure(List: TList); stdcall;
    Count: function(List: TList): Integer; stdcall;
    Add: procedure(List: TList; Item: Pointer); stdcall;
    Insert: procedure(List: TList; Index: Integer; Item: Pointer); stdcall;
    Get: function(List: TList; Index: Integer): Pointer; stdcall;
    Delete: procedure(List: TList; Index: Integer); stdcall;
    Clear: procedure(List: TList); stdcall;
  end;

  TStringListAPI = record
    Create: function: TStringList; stdcall;
    Free: procedure(List: TStringList); stdcall;
    Count: function(List: TStringList): Integer; stdcall;
    Add: procedure(List: TStringList; S: _PCHAR); stdcall;
    AddObject: procedure(List: TStringList; S: _PCHAR; AObject: TObject); stdcall;
    Insert: procedure(List: TStringList; Index: Integer; S: _PCHAR; AObject: TObject); stdcall;
    Get: function(List: TStringList; Index: Integer): _PCHAR; stdcall;
    GetObject: function(List: TStringList; Index: Integer): TObject; stdcall;
    Delete: procedure(List: TStringList; Index: Integer); stdcall;
    Clear: procedure(List: TStringList); stdcall;
  end;

  TDrawAPI = record //����ͼƬ���API
    Draw: procedure(X, Y: Integer; SrcRect: TRect; Texture: TTexture; BlendMode: Integer); stdcall;
    DrawColor: procedure(X, Y: Integer; SrcRect: TRect; Texture: TTexture; Color: TColor; BlendMode: Integer); stdcall;
    StretchDraw: procedure(DestRect, SrcRect: TRect; Texture: TTexture; BlendMode: Integer); stdcall; //����ģʽ����
    DrawAlpha: procedure(X, Y: Integer; SrcRect: TRect; Texture: TTexture; Alpha: Byte; BlendMode: Integer); stdcall;
    DrawColorAlpha: procedure(X, Y: Integer; SrcRect: TRect; Texture: TTexture; Color: TColor; Alpha: Byte; BlendMode: Integer); stdcall;
    DrawBlend: procedure(X, Y: Integer; SrcRect: TRect; Texture: TTexture); stdcall; //ħ��Ч������
    DrawEffect: procedure(GameImages {wil�ļ����}, nImageIndex {wil�ļ����}, X, Y: Integer; SrcRect: TRect; boEffect: Boolean; BlendMode: Integer); stdcall; // ���Ƽ����ͻҶ�Ч��  boEffect=True����  boEffect=False�Ҷ�

    FrameRect: procedure(Rect: TRect; Color: TColor; BlendMode: Integer); stdcall; //���ƾ��ο�
    FillRect: procedure(Rect: TRect; Color: TColor; BlendMode: Integer); stdcall; //���ƾ��ο������þ���
    FillRectAlpha: procedure(DestRect: TRect; Color: TColor; Alpha: Byte; BlendMode: Integer); stdcall;

    Line: procedure(Pt1, Pt2: TPoint; Color: TColor; BlendMode: Integer); stdcall; //����
    FillTri: procedure(p1, p2, p3: TPoint; c1, c2, c3: TColor; BlendMode: Integer); stdcall; //��������
    Circle: procedure(X, Y, Radius: Single; Color: TColor; Filled: Boolean; BlendMode: Integer); stdcall; //��Բ

//------------------------------------------------------------------------------
    CurrentFont: function: THGEFont; stdcall; //��ǰĬ������
    FindFont: function(FontName: _PCHAR; FontSize: Integer; FontStyles: TFontStyles): THGEFont; stdcall;
    TextRect: procedure(HGEFont: THGEFont; X, Y: Integer; SrcRect: TRect; Text: _PCHAR; Color: TColor; BlendMode: Integer); stdcall; //��ʾ����
    TextOut: procedure(HGEFont: THGEFont; X, Y: Integer; Text: _PCHAR; Color: TColor; BlendMode: Integer); stdcall; //��ʾ����
    BoldTextOut: procedure(HGEFont: THGEFont; X, Y: Integer; Text: _PCHAR; FColor, BColor: TColor); stdcall;
    TextWidth: function(HGEFont: THGEFont; Text: _PCHAR): Integer; stdcall;
    TextHeight: function(HGEFont: THGEFont; Text: _PCHAR): Integer; stdcall;
  end;
  pTDrawAPI = ^TDrawAPI;

  TSocketAPI = record //���ݷ���
    SendSocket: procedure(S: _PCHAR); stdcall;
    SendClientMessage: procedure(Msg: Word; Recog: Int64; param, tag, series: Word; S: _PCHAR); stdcall;
    SendLogin: procedure(uid, passwd: _PCHAR); stdcall; //��¼
    SendSelectServer: procedure(sServerName: _PCHAR); stdcall; //���ڷ�����
    SendQueryChr: procedure; stdcall; //��ѯ��ɫ
    SendSelChr: procedure(sChrName: _PCHAR); stdcall; //ѡ���ɫ
    SendSay: procedure(S: _PCHAR); stdcall;
    Close: procedure; stdcall; //�Ͽ�����
  end;
  pTSocketAPI = ^TSocketAPI;

  pTList = ^TList;

  TGameAPI = record
    ClientPath: function: _PCHAR; stdcall; //��¼��·��
    ClientName: function: _PCHAR; stdcall; //��¼������
    MySelf: function: TActor; stdcall; //�Լ�
    MyHero: function: TActor; stdcall; //�ҵ�Ӣ��
    MagicList: function: TList; stdcall; //�����б�
    MagicNGList: function: TList; stdcall; //�ڹ������б�
    ContinuousMagicList: function: TList; stdcall; //���������б�

    HeroMagicList: function: TList; stdcall; //Ӣ��ħ���б�
    HeroMagicNGList: function: TList; stdcall; //Ӣ���ڹ������б�
    HeroContinuousMagicList: function: TList; stdcall; //Ӣ�����������б�

    GroupMembers: function: TStringList; stdcall; //���б�
    DropedItemList: function: TList; stdcall; //������Ʒ�б�
    MenuItemList: function: TList; stdcall; //��ǰNPC������Ʒ�б�
    ActorList: function: TList; stdcall; //��ɫ�б�
    ScreenXYfromMCXY: procedure(cx, cy: Integer; var sx, sY: Integer); stdcall; //��ͼ����ת����Ļ����
    CXYfromMouseXY: procedure(mx, my: Integer; var ccx, ccy: Integer); stdcall; //��Ļ����ת����ͼ����
    FindActor1: function(nRecogId: Int64): TActor; stdcall; //���ҽ�ɫ
    FindActor2: function(sName: _PCHAR): TActor; stdcall;
    FindActorXY1: function(X, Y: Integer): TActor; stdcall;
    FindActorXY2: function(X, Y: Integer; Actor: TActor): TActor; stdcall;
    CanWalk: function(mx, my: Integer): Boolean; stdcall;
    CanRun: function(sx, sY, ex, ey: Integer): Boolean; stdcall;
    CanHorseRun: function(sx, sY, ex, ey: Integer): Boolean; stdcall;
    GetRGB: function(c256: Byte): Integer; stdcall; //��ȡ��ɫ
    DebugOutStr: procedure(Msg: _PCHAR; boWriteDate: Boolean); stdcall; //д���ռ�
    AppLogout: procedure; stdcall; //С��
    AppExit: procedure; stdcall; //�˳���Ϸ
    DMessageDlg: function(Msg: _PCHAR; DlgButtons: TMsgDlgButtons): TModalResult; stdcall; //�����Ի���
    AddChatBoardString: procedure(Msg: _PCHAR; FColor, BColor: Byte); stdcall; //�������ʾ��Ϣ
    AddTopChatBoardString: procedure(Msg: _PCHAR; FColor, BColor: Byte; TimeOut: Integer); stdcall; //�����̶���Ϣ
    AddMoveMsg: procedure(Msg: _PCHAR; FColor, BColor: Byte; nX, nY, nCount: Integer); stdcall; //������Ϣ
    ShowHint: procedure(X, Y: Integer; Msg: _PCHAR; Color: TColor; DrawUp: Boolean; DrawLeft: Boolean; ShowBackground: Boolean); stdcall; //��ʾ������
    ShowMouseItemInfo: procedure(Actor: TActor; MouseItem: pTClientItem; X, Y: Integer; Secret {�Ƿ�������װ��}: Boolean; ShowTzItemDesc {��װ��ע���� 0=�Լ� 1=Ӣ�� 2=�鿴����������}: Byte; DrawUp: Boolean; DrawLeft: Boolean); stdcall; //��������ʾװ����Ϣ
    ClearHint: procedure; stdcall; //���������
    DlgEditText: function: _PCHAR; stdcall; //DMessageDlg �Ի����û��������Ϣ
    PlaySound: procedure(idx: Integer); stdcall;
    PlaySoundA: procedure(sFileName: _PCHAR; LoopCount: Integer); stdcall;
    ItemClickSound: procedure(StdItem: TStdItem); stdcall;
    ItemBag: function: pTItemArr; stdcall; //������Ʒָ��
    HeroItemBag: function: pTHeroItemArr; stdcall; //Ӣ�۰�����Ʒָ��
    UseItems: function: pTUseItems; stdcall; //����װ��ָ��
    HeroUseItems: function: pTUseItems; stdcall; //Ӣ������װ��ָ��
    UserState1: function: pTUserStateInfo; stdcall; //�鿴�ı�������װ��ָ��
    boItemMoving: function: Boolean; stdcall;
    MovingItem: function: pTMovingItem; stdcall; //pTMovingItem; //��ǰ�����ƶ�����Ʒָ��
    WaitingUseItem: function: pTMovingItem; stdcall; //pTMovingItem;
    SellDlgItem: function: pTClientItem; stdcall; //pTClientItem; ��ǰOK����Ʒ
    nTargetX: function: PInteger; stdcall; //Ŀ������
    nTargetY: function: PInteger; stdcall; //Ŀ������
    TargetCret: function: pTActor; stdcall;
    FocusCret: function: TActor; stdcall;
    MagicTarget: function: pTActor; stdcall;
    Gold: function: Integer; stdcall; //�������
    GameGold: function: Integer; stdcall; //Ԫ������
    GamePoint: function: Integer; stdcall; //��Ϸ������
    GloryPoint: function: Integer; stdcall; //����
    GameDiamond: function: Integer; stdcall; //���ʯ
    GameGird: function: Integer; stdcall; //���
    GameGlory: function: Integer; stdcall; //����
    LoyaltyPoint: function: Integer; stdcall; //�ҳ϶�
    GameGoldName: function: _PCHAR; stdcall; //Ԫ������
    GamePointName: function: _PCHAR; stdcall; //��Ϸ������
    GameDiamondName: function: _PCHAR; stdcall; //���ʯ����
    GameGirdName: function: _PCHAR; stdcall; //�������
    EncodeBuffer: function(InData: _PCHAR; InBytes: Integer; OutData: _PCHAR): Integer; stdcall;
    DecodeBuffer: function(InData: _PCHAR; InBytes: Integer; OutData: _PCHAR): Integer; stdcall;
    FullScreenDrawScene: procedure(Value: Boolean); stdcall; //ȫ�����Ƴ���
    AreaStateValue: function: Boolean; stdcall; //��ǰ���ڹ�������
    MapTitle: function: _PCHAR; stdcall; //��ǰ��ͼ����
    EatItem: procedure(idx: Integer); stdcall; //ʹ����Ʒ
    HeroEatItem: procedure(idx: Integer); stdcall; //Ӣ��ʹ����Ʒ
    ServerImageList: function: TStringList; stdcall; //M2�б���Ϣ2��WIL�б�
    ClassDlg: function: TObject; stdcall; //��¼�����������

    SetMovingItem: procedure(Item: pTMovingItem); stdcall; //pTMovingItem; //��ǰ�����ƶ�����Ʒ
    SetWaitingUseItem: procedure(Item: pTMovingItem); stdcall; //pTMovingItem;
    SetSellDlgItem: procedure(Item: pTClientItem); stdcall;
    SetItemBag: procedure(Index: Integer; Item: pTClientItem); stdcall; //������Ʒ
    SetHeroItemBag: procedure(Index: Integer; Item: pTClientItem); stdcall; //Ӣ�۰�����Ʒ
    SetUseItems: procedure(Index: Integer; Item: pTClientItem); stdcall; //����װ��
    SetHeroUseItems: procedure(Index: Integer; Item: pTClientItem); stdcall; //Ӣ������װ��
    SetUserState1: procedure(UserStateInfo: pTUserStateInfo); stdcall; //�鿴�ı�������װ��
    SetItemMoving: procedure(Value: Boolean); stdcall;
    Reserveds: array[0..99] of Integer;
  end;

  TInitialize = procedure(Handle: THandle; FirstInit: Boolean; WindowMode: Boolean; ScreenWidth, ScreenHeight: Word; ClientVersion: TClientVersion); stdcall;
  TStartPro = procedure; stdcall;
  TFormKeyDown = procedure(Sender: TObject; var Key: Word; Shift: TShiftState); stdcall;
  TFormKeyPress = procedure(Sender: TObject; var Key: Char); stdcall;
  TFormMouseDown = procedure(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); stdcall;
  TFormMouseMove = procedure(Sender: TObject; Shift: TShiftState; X, Y: Integer); stdcall;
  TDecodeMessagePacket = procedure(DefMsg: pTDefaultMessage; sData: _PCHAR); stdcall;

  TObjectAction = procedure(Actor: TActor); stdcall;
  TTActor_DrawChr = procedure(Actor: TActor; dx, dy: Integer; blend: Boolean; boFlag: Boolean); stdcall;

  THookAPI = record
    GetHookInitialize: function: TInitialize; stdcall;
    GetHookFinalize: function: TStartPro; stdcall;
    GetHookFormKeyDown: function: TFormKeyDown; stdcall;
    GetHookFormKeyPress: function: TFormKeyPress; stdcall;
    GetHookFormMouseDown: function: TFormMouseDown; stdcall;
    GetHookFormMouseMove: function: TFormMouseMove; stdcall;
    GetHookDecodeMessagePacketStart: function: TDecodeMessagePacket; stdcall;
    GetHookDecodeMessagePacketStop: function: TDecodeMessagePacket; stdcall;
    GetHookDecodeMessagePacket: function: TDecodeMessagePacket; stdcall;

    GetHookDrawScene1: function: TStartPro; stdcall;
    GetHookDrawScene2: function: TStartPro; stdcall;
    GetHookDrawScene3: function: TStartPro; stdcall;
    GetHookDrawScene4: function: TStartPro; stdcall;

    GetHookTActor_FeatureChanged: function: TObjectAction; stdcall;
    GetHookTActor_CalcActorFrame: function: TObjectAction; stdcall;
    GetHookTActor_DrawChr1: function: TTActor_DrawChr; stdcall;
    GetHookTActor_DrawChr2: function: TTActor_DrawChr; stdcall;

    GetHookTHumActor_CalcActorFrame: function: TObjectAction; stdcall;
    GetHookTHumActor_DrawChr1: function: TTActor_DrawChr; stdcall;
    GetHookTHumActor_DrawChr2: function: TTActor_DrawChr; stdcall;
    GetHookTHumActor_DrawChr3: function: TTActor_DrawChr; stdcall;
    GetHookTHumActor_DrawChr4: function: TTActor_DrawChr; stdcall;

//------------------------------------------------------------------------------
    SetHookInitialize: procedure(Value: TInitialize); stdcall;
    SetHookFinalize: procedure(Value: TStartPro); stdcall;
    SetHookFormKeyDown: procedure(Value: TFormKeyDown); stdcall;
    SetHookFormKeyPress: procedure(Value: TFormKeyPress); stdcall;
    SetHookFormMouseDown: procedure(Value: TFormMouseDown); stdcall;
    SetHookFormMouseMove: procedure(Value: TFormMouseMove); stdcall;
    SetHookDecodeMessagePacketStart: procedure(Value: TDecodeMessagePacket); stdcall;
    SetHookDecodeMessagePacketStop: procedure(Value: TDecodeMessagePacket); stdcall;
    SetHookDecodeMessagePacket: procedure(Value: TDecodeMessagePacket); stdcall;

    SetHookDrawScene1: procedure(Value: TStartPro); stdcall;
    SetHookDrawScene2: procedure(Value: TStartPro); stdcall;
    SetHookDrawScene3: procedure(Value: TStartPro); stdcall;
    SetHookDrawScene4: procedure(Value: TStartPro); stdcall;

    SetHookTActor_FeatureChanged: procedure(Value: TObjectAction); stdcall;
    SetHookTActor_CalcActorFrame: procedure(Value: TObjectAction); stdcall;
    SetHookTActor_DrawChr1: procedure(Value: TTActor_DrawChr); stdcall;
    SetHookTActor_DrawChr2: procedure(Value: TTActor_DrawChr); stdcall;

    SetHookTHumActor_CalcActorFrame: procedure(Value: TObjectAction); stdcall;
    SetHookTHumActor_DrawChr1: procedure(Value: TTActor_DrawChr); stdcall;
    SetHookTHumActor_DrawChr2: procedure(Value: TTActor_DrawChr); stdcall;
    SetHookTHumActor_DrawChr3: procedure(Value: TTActor_DrawChr); stdcall;
    SetHookTHumActor_DrawChr4: procedure(Value: TTActor_DrawChr); stdcall;
    Reserveds: array[0..99] of Integer;
  end;

  TActorAPI = record
    m_wAppearance: function(Actor: TActor): PWord; stdcall;
    m_nRecogId: function(Actor: TActor): PInt64; stdcall; //��ɫ��ʶ
    m_nCurrX: function(Actor: TActor): PInteger; stdcall; //��ǰ���ڵ�ͼ����X
    m_nCurrY: function(Actor: TActor): PInteger; stdcall; //��ǰ���ڵ�ͼ����Y
    m_btDir: function(Actor: TActor): PByte; stdcall; //��ǰվ������
    m_btSex: function(Actor: TActor): PByte; stdcall; //�Ա�
    m_btRace: function(Actor: TActor): PByte; stdcall; //����DB���RaceImg
    m_btHair: function(Actor: TActor): PByte; stdcall; //ͷ������
    m_wDress: function(Actor: TActor): PWord; stdcall; //�·�����
    m_wWeapon: function(Actor: TActor): PWord; stdcall; //��������
    m_btJob: function(Actor: TActor): PByte; stdcall; //ְҵ 0:��ʿ  1:��ʦ  2:��ʿ
    m_btCaseltGuild: function(Actor: TActor): PByte; stdcall; //1=ɳ�л��Ա //2=ɳ�л�����
    m_sDescUserName: function(Actor: TActor): _PCHAR; stdcall; //������
    m_sUserName: function(Actor: TActor): _PCHAR; stdcall; //����
    m_nNameColor: function(Actor: TActor): PInteger; stdcall; //������ɫ
    m_Abil: function(Actor: TActor): pTAbility; stdcall; //����
    m_boOpenShop: function(Actor: TActor): Boolean; stdcall; //�Ƿ��ڰ�̯

    m_nSayX: function(Actor: TActor): Integer; stdcall;
    m_nSayY: function(Actor: TActor): Integer; stdcall;
    m_nShiftX: function(Actor: TActor): Integer; stdcall;
    m_nShiftY: function(Actor: TActor): Integer; stdcall;
    m_nTargetX: function(Actor: TActor): PInteger; stdcall;
    m_nTargetY: function(Actor: TActor): PInteger; stdcall;
    m_nTargetRecog: function(Actor: TActor): PInt64; stdcall;
    m_boCobweb: function(Actor: TActor): PBoolean; stdcall; //����ס��
    m_boCanDraw: function(Actor: TActor): Boolean; stdcall; //�ý�ɫ�Ƿ���Ի���
    m_nBagCount: function(Actor: TActor): Integer; stdcall; //���������
    m_btColor: function(Actor: TActor): Byte; stdcall; //�ű������޸ĵ�������ɫ
    m_nState: function(Actor: TActor): PInteger; stdcall; //�����ж���Ե�
//------------------------------------------------------------------------------
    m_nBodyOffset: function(Actor: TActor): PInteger; stdcall;
    m_boUseMagic: function(Actor: TActor): PBoolean; stdcall;
    m_nCurrentFrame: function(Actor: TActor): PInteger; stdcall;
    m_nStartFrame: function(Actor: TActor): PInteger; stdcall;
    m_nEndFrame: function(Actor: TActor): PInteger; stdcall;
    m_dwFrameTime: function(Actor: TActor): PLongWord; stdcall;
    m_dwStartTime: function(Actor: TActor): PLongWord; stdcall;
    Reserveds: array[0..99] of Integer;
  end;

  TClientAPI = record
    ListAPI: TListAPI;
    StringListAPI: TStringListAPI;
    ItemMenuListAPI: TItemMenuListAPI;
    TextureAPI: TTextureAPI;
    ImagesAPI: TImagesAPI; //��ȡWIL API
    InterfaceAPI: TInterfaceAPI; //��Ϸ����API
    DrawAPI: TDrawAPI; //����API
    ActorAPI: TActorAPI; //��ɫ���API
    SocketAPI: TSocketAPI;
    HookAPI: THookAPI; //HookAPI
    GameAPI: TGameAPI;
    GameInterfaceAPI: TGameInterfaceAPI; //
    Reserveds: array[0..99 - 28] of Integer;
  end;
  pTClientAPI = ^TClientAPI;

var
  ListAPI: TListAPI;
  StringListAPI: TStringListAPI;
  ItemMenuListAPI: TItemMenuListAPI; //����TDPopupMenu.Items
  TextureAPI: TTextureAPI;
  ImagesAPI: TImagesAPI; //��ȡWIL API

  DControlAPI: TDControl;
  DWindowAPI: TDWindow;
  DButtonAPI: TDButton;
  DEditAPI: TDEdit;
  DGridAPI: TDGrid;
  DComboBoxAPI: TDComboBox;
  DPopupMenuAPI: TDPopupMenu;
  DPageControl: TDPageControl; //��ҳ��
  DProgressBar: TDProgressBar; //������
  DrawAPI: TDrawAPI; //����API
  ActorAPI: TActorAPI; //��ɫ���API
  SocketAPI: TSocketAPI;
  HookAPI: THookAPI; //HookAPI
  GameAPI: TGameAPI;
  GameInterfaceAPI: TGameInterfaceAPI; //

function MakeDefaultMsg(wIdent: Word; nRecog: Int64; wParam, wTag, wSeries: Word): TDefaultMessage;
function EncodeMessage(Msg: TDefaultMessage): _STRING;
function DecodeMessage(const Str: _STRING): TDefaultMessage;
function EncodeString(const Str: _STRING): _STRING;
function DecodeString(const Str: _STRING): _STRING;
function EncodeBuffer(buf: _PCHAR; bufsize: Integer): _STRING;
procedure DecodeBuffer(const src: _STRING; buf: _PCHAR);
implementation

function GetEncodeSize(nSize: Integer): Integer;
var
  X: Double;
begin
  X := nSize * 4 / 3;
  if Int(X) < X then Result := Trunc(X) + 1
  else Result := Trunc(X)
end;

function GetDecodeSize(nSize: Integer): Integer;
begin
  Result := Trunc(nSize - nSize / 4);
end;

function MakeDefaultMsg(wIdent: Word; nRecog: Int64; wParam, wTag, wSeries: Word): TDefaultMessage;
begin
  Result.nRecog := nRecog;
  Result.wIdent := wIdent;
  Result.wParam := wParam;
  Result.wTag := wTag;
  Result.wSeries := wSeries;
end;

function EncodeMessage(Msg: TDefaultMessage): _STRING;
var
  nLen: Integer;
begin
  SetLength(Result, SizeOf(TDefaultMessage) * 2);
  nLen := GameAPI.EncodeBuffer(@Msg, SizeOf(TDefaultMessage), @Result[1]);
  SetLength(Result, nLen);
end;

function DecodeMessage(const Str: _STRING): TDefaultMessage;
begin
  GameAPI.DecodeBuffer(_PCHAR(Str), SizeOf(TDefaultMessage), @Result);
end;

function EncodeString(const Str: _STRING): _STRING;
var
  nLen: Integer;
begin
  SetLength(Result, Length(Str) * 2);
  nLen := GameAPI.EncodeBuffer(_PCHAR(Str), Length(Str), @Result[1]);
  SetLength(Result, nLen);
end;

function DecodeString(const Str: _STRING): _STRING;
var
  nLen: Integer;
  S: _STRING;
begin
  SetLength(Result, Length(Str));
  nLen := GameAPI.DecodeBuffer(_PCHAR(Str), Length(Str), @Result[1]);
  SetLength(Result, nLen);
end;

function EncodeBuffer(buf: _PCHAR; bufsize: Integer): _STRING;
var
  nLen: Integer;
begin
  SetLength(Result, bufsize * 2);
  nLen := GameAPI.EncodeBuffer(buf, bufsize, @Result[1]);
  SetLength(Result, nLen);
end;

procedure DecodeBuffer(const src: _STRING; buf: _PCHAR);
begin
  GameAPI.DecodeBuffer(_PCHAR(src), Length(src), buf);
end;

end.

