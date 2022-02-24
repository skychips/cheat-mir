#ifndef __CHEAT_CALLBACK_H__
#define __CHEAT_CALLBACK_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_stdint.h>

#include <functional>
#include <string>
#include <chrono>
#include <memory>

namespace Mir
{
    using Handler = std::function<void()>;
    using InterfaceFiles = std::function<bool(const std::string&, const std::uintmax_t, const std::chrono::seconds&)>;
}

#endif // __CHEAT_CALLBACK_H__