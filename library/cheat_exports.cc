#include <cheat_exports.h>
#include <cheat_loop.h>

namespace backward
{
    SignalHandling sh;
}

namespace Cheat
{
    LRESULT CALLBACK interfaces(int nCode, WPARAM wParam, LPARAM lParam)
    {
        return CheatLoop::GetInstance()->DialogProc(nCode, wParam, lParam);
    }
}