#ifndef __CHEAT_TRANSLATE_H__
#define __CHEAT_TRANSLATE_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>
#include <string>

namespace Cheat
{
    class CheatTranslate
    {
    public:
        explicit CheatTranslate(const std::string& wndname);
        explicit CheatTranslate(HWND handler);
        virtual ~CheatTranslate();
    private:
        LRESULT CALLBACK DialogProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
        static LRESULT CALLBACK DialogSubClassProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
    private:
        HWND                                                cheat_handler;
        HINSTANCE                                           cheat_hinstance;
        void*                                               cheat_data;
        WNDPROC                                             cheat_proc;
    };
}

#endif // __CHEAT_TRANSLATE_H__