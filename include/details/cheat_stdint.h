#ifndef __CHEAT_STDINT_H__
#define __CHEAT_STDINT_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_arch.h>

#include <cstdint>
#include <cstdio>

using s8    = int8_t;
using s16   = int16_t;
using s32   = int32_t;
using s64   = int64_t;

using u8    = uint8_t;
using u16   = uint16_t;
using u32   = uint32_t;
using u64   = uint64_t;

using s96   = intptr_t;
using u96   = uintptr_t;

#endif // __CHEAT_STDINT_H__