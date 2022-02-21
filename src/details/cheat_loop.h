#ifndef __CHEAT_LOOP_H__
#define __CHEAT_LOOP_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>

#include <memory>

namespace Mir
{
    class CheatConsole;
    class CheatTranslate;
    class CheatDialogMain;
    class CheatLoop
    {
    public:
        explicit CheatLoop();
        virtual ~CheatLoop();
    public:
        LRESULT CALLBACK DialogProc(int nCode, WPARAM wParam, LPARAM lParam);
    public:
        static std::shared_ptr<CheatLoop> GetInstance();
    private:
        std::unique_ptr<CheatTranslate>             cheat_translate;
        std::unique_ptr<CheatConsole>               cheat_console;
        std::unique_ptr<CheatDialogMain>            cheat_main;
    };
}

#endif // __CHEAT_LOOP_H__