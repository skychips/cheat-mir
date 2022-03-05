#include <cheat_translate.h>

namespace Cheat
{
    CheatTranslate::CheatTranslate(const std::string& wndname) : CheatTranslate(FindWindow(0, wndname.c_str())) {}
    CheatTranslate::CheatTranslate(HWND handler)
        : cheat_handler(handler)
        , cheat_hinstance(reinterpret_cast<HINSTANCE>(GetWindowLong(handler, GWL_HINSTANCE)))
        , cheat_data(nullptr)
        , cheat_proc(DefWindowProc)
    {
        if (IsWindow(handler))
        {
            cheat_data = reinterpret_cast<void*>(SetWindowLong(handler, GWL_USERDATA, reinterpret_cast<LONG>(this)));
            cheat_proc = reinterpret_cast<WNDPROC>(SetWindowLong(handler, GWL_WNDPROC, reinterpret_cast<LONG>(&CheatTranslate::DialogSubClassProc)));
        }
    }

    CheatTranslate::~CheatTranslate()
    {
        if (nullptr != cheat_handler)
        {
            // 还原数据
            SetWindowLong(cheat_handler, GWL_USERDATA, reinterpret_cast<LONG>(cheat_data));
            SetWindowLong(cheat_handler, GWL_WNDPROC, reinterpret_cast<LONG>(cheat_proc));
        }
    }

    LRESULT CALLBACK CheatTranslate::DialogProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
    {
        if (uMsg == WM_KEYDOWN || uMsg == WM_SYSKEYDOWN)
        {
            printf("按下键盘：%d\n", wParam);
        }

        return CallWindowProc(cheat_proc, hWnd, uMsg, wParam, lParam);
    }

    LRESULT CALLBACK CheatTranslate::DialogSubClassProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
    {
        if (nullptr != hWnd)
        {
            CheatTranslate* watcher = reinterpret_cast<CheatTranslate *>(GetWindowLong(hWnd, GWL_USERDATA));
            {
                if (nullptr == watcher)
                {
                    return CallWindowProc(DefWindowProc, hWnd, uMsg, wParam, lParam);
                }

                return watcher->DialogProc(hWnd, uMsg, wParam, lParam);
            }
        }

        return LRESULT(0);
    }
}