#ifndef __CHEAT_SEARCH_MEMORY_H__
#define __CHEAT_SEARCH_MEMORY_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>

#include <string>
#include <tuple>
#include <algorithm>
#include <stdexcept>
#include <array>

#include <intrin.h>

namespace Mir
{
    class CheatMemorySearch
    {
    public:
        explicit CheatMemorySearch();
        virtual ~CheatMemorySearch();
    public:
        bool SearchPattern(const void* start, const void* end, const std::string& keyword, std::size_t index, void*& address);
        bool SearchPatternEx(const void* start, const void* end, const std::string& keyword, std::size_t index, void*& address);
    protected:
        bool SearchPattern(const unsigned char* pos, const std::string& chars);
        bool SearchPatternEx(const void* start, const void* end, const std::string& chars, std::size_t index, std::size_t count, void*& address);
    private:
    };
}
#endif // __CHEAT_SEARCH_MEMORY_H__