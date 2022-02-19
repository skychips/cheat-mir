#ifndef __CHEAT_CONSOLE_H__
#define __CHEAT_CONSOLE_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>
#include <memory>

namespace Mir
{
    class CheatConsole
    {
    public:
        explicit CheatConsole();
        virtual ~CheatConsole();
    private:
        FILE*                                           cheat_stream;
    };
}

#endif // __CHEAT_CONSOLE_H__