#ifndef __CHEAT_UNTLITY_H__
#define __CHEAT_UNTLITY_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_stdint.h>

namespace Cheat
{
    static unsigned long ExceptionFilter(LPEXCEPTION_POINTERS ExpRession)
    {
        if (EXCEPTION_ACCESS_VIOLATION == ExpRession->ExceptionRecord->ExceptionCode)
        {
            return EXCEPTION_EXECUTE_HANDLER;
        }
        return EXCEPTION_CONTINUE_SEARCH;
    }
}

#endif // __CHEAT_UNTLITY_H__