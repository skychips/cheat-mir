#include <iostream>
#include <windows.h>

int main()
{
    UINT WM_PROCESS_EVENT_FILTER = RegisterWindowMessage("ProcessEventFilter");
    HHOOK m_Hook = NULL;
    HWND GamehWnd = 0;
    for (;;)
    {
        GamehWnd = ::FindWindow(0, "Legend of Mir2");
        Sleep(100);
        if (GamehWnd)
        {
            break;
        }
    }

    if (GamehWnd)
    {
        DWORD fProcessId = 0;

        DWORD fThreadProcessId = GetWindowThreadProcessId(GamehWnd, &fProcessId);

        HINSTANCE hInst = LoadLibrary("./library.dll");
        if (hInst)
        {
            HOOKPROC lpfn = (HOOKPROC)GetProcAddress(hInst, "interfaces");
            if (lpfn)
            {
                m_Hook = SetWindowsHookEx(WH_GETMESSAGE, lpfn, hInst, fThreadProcessId);

                FreeLibrary(hInst);
            }
        }

        getchar();

        if (!UnhookWindowsHookEx(m_Hook))
        {
            printf("卸载HOOK失败\n");
            getchar();
        }
        getchar();
        
    }
    return 0;
}