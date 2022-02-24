#include <details/cheat_console.h>

namespace Mir
{
    CheatConsole::CheatConsole() : cheat_stream(nullptr)
    {
        if (AllocConsole())
        {
            freopen_s(std::addressof(cheat_stream), "CONIN$", "w", stdin);
            freopen_s(std::addressof(cheat_stream), "CONOUT$", "w", stderr);
            freopen_s(std::addressof(cheat_stream), "CONOUT$", "w", stdout);
        }
    }

    CheatConsole::~CheatConsole()
    {
        if (0 == fclose(cheat_stream))
        {
            FreeConsole();
        }
    }
}