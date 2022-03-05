#ifndef __CHEAT_EXPORTS_H__
#define __CHEAT_EXPORTS_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>
#include <memory>

#include <backward.hpp>

namespace Cheat
{
    LRESULT CALLBACK interfaces(int nCode, WPARAM wParam, LPARAM lParam);
}
#endif // __CHEAT_EXPORTS_H__