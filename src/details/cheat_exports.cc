#include <details/cheat_exports.h>
#include <details/cheat_loop.h>
namespace Mir
{
    LRESULT CALLBACK interfaces(int nCode, WPARAM wParam, LPARAM lParam)
    {
        return CheatLoop::GetInstance()->DialogProc(nCode, wParam, lParam);
    }
}