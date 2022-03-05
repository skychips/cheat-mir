#include <cheat_loop.h>
#include <cheat_translate.h>
#include <cheat_console.h>
#include <game/cheat_game_struct.h>

#include <thread>

namespace Cheat
{
    CheatLoop::CheatLoop()
        : cheat_translate(std::make_unique<CheatTranslate>("Legend of Mir2"))
        , cheat_console(std::make_unique<CheatConsole>())
    {

    }

    CheatLoop::~CheatLoop()
    {

    }

    LRESULT CheatLoop::DialogProc(int nCode, WPARAM wParam, LPARAM lParam)
    {
        if (wParam == PM_REMOVE)
        {
            if (!(HIBYTE(HIWORD(reinterpret_cast<LPMSG>(lParam))) & 0x40))
            {
                if (reinterpret_cast<LPMSG>(lParam)->message == WM_KEYDOWN || reinterpret_cast<LPMSG>(lParam)->message == WM_SYSKEYDOWN)
                {
                    if (reinterpret_cast<LPMSG>(lParam)->wParam == VK_HOME)
                    {
                        printf("Home\n");
                    }
                }
            }
        }

        return CallNextHookEx(NULL, nCode, wParam, lParam);
    }

    std::shared_ptr<CheatLoop> CheatLoop::GetInstance()
    {
        static std::shared_ptr<CheatLoop> cheat_loop;

        if (nullptr == cheat_loop)
        {
            cheat_loop = std::make_shared<CheatLoop>();
        }

        return cheat_loop;
    }
}