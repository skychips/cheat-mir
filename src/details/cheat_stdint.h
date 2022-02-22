#ifndef __CHEAT_STDINT_H__
#define __CHEAT_STDINT_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_arch.h>

#include <cstdint>
#include <cstdio>

typedef char                        s8;
typedef short                       s16;
typedef int                         s32;
typedef long long                   s64;

typedef unsigned char               u8;
typedef unsigned short              u16;
typedef unsigned int                u32;
typedef unsigned long long          u64;

#endif // __CHEAT_STDINT_H__