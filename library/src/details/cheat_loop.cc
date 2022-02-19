#include <details/cheat_loop.h>
#include <details/cheat_console.h>
#include <details/cheat_translate.h>

#include <dialogs/cheat_dialog_main.h>

#include <thread>

namespace Mir
{
    CheatLoop::CheatLoop()
        : cheat_translate(std::make_unique<CheatTranslate>("Legend of Mir2"))
        , cheat_console(std::make_unique<CheatConsole>())
    {

    }

    CheatLoop::~CheatLoop()
    {
        printf("Ð¶ÔØ\n");
        if (nullptr != cheat_main)
        {
            cheat_main->close();
        }
    }

    LRESULT CheatLoop::DialogProc(int nCode, WPARAM wParam, LPARAM lParam)
    {
        if (wParam == PM_REMOVE)
        {
            if (!(HIBYTE(HIWORD(reinterpret_cast<LPMSG>(lParam))) & 0x40))
            {
                if (nullptr == cheat_main)
                {
                    QApplication a(*const_cast<int*>(std::addressof(static_cast<const int&>(0))), nullptr);
                    QWidget widget;
                    cheat_main = std::make_unique<CheatDialogMain>(&widget);
                    cheat_main->setAttribute(Qt::WA_DeleteOnClose);
                    cheat_main->show();
                    a.exec();
                }

                if (reinterpret_cast<LPMSG>(lParam)->message == WM_KEYDOWN || reinterpret_cast<LPMSG>(lParam)->message == WM_SYSKEYDOWN)
                {
                    if (reinterpret_cast<LPMSG>(lParam)->wParam == VK_HOME)
                    {
                        if (nullptr != cheat_main)
                        {
                            if (cheat_main->adjustVisible())
                            {
                                printf("Òþ²Ø1\n");
                            }
                        }
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