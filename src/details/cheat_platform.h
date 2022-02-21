#ifndef __CHEAT_PLATFORM_H__
#define __CHEAT_PLATFORM_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_arch.h>

#ifdef H_OS_WINDOWS
#   define FORCEINLINE          __forceinline
#   define NOFORCEINLINE        __declspec (noinline)
#else
#   define FORCEINLINE          __attribute__ ((always_inline))
#   define NOFORCEINLINE        __attribute__ ((noinline))
#endif

#if defined(H_OS_WINDOWS)
#   define CHEAT_DECL_EXPORT    __declspec(dllexport)
#   define CHEAT_DECL_IMPORT    __declspec(dllimport)
#else
#   define CHEAT_DECL_EXPORT
#   define CHEAT_DECL_IMPORT
#endif

#ifndef CHEAT_EXPORT_STATIC
#   define CHEAT_EXPORT_STATIC
#endif

#ifndef CHEAT_STATIC
#   if defined(CHEAT_EXPORT_STATIC)
#       define CHEAT_EXPORT CHEAT_DECL_EXPORT
#   else
#       define CHEAT_EXPORT CHEAT_DECL_IMPORT
#   endif
#else
#       define CHEAT_EXPORT
#endif

#ifdef H_OS_WINDOWS
#   pragma warning( disable: 4251 )
#   pragma warning( disable: 4996 )
#   pragma warning( disable: 4244 4251 4355 4715 4800 4996 4005 4819)
#   pragma warning( disable: 4505 )
#   pragma warning( disable: 4530 )
#   pragma warning( disable: 4577 )
#   pragma warning( disable: 4503 )
#   pragma warning( disable: 4458 )
#   pragma warning( disable: 4100 )
#   pragma warning( disable: 4702 )
#endif

#ifdef H_OS_WINDOWS
#   pragma comment(lib, "winmm.lib")
#   pragma comment(lib, "imm32.lib")
#   pragma comment(lib, "netapi32.lib")
#   pragma comment(lib, "userenv.lib")
#   pragma comment(lib, "wtsapi32.lib")
#   pragma comment(lib, "version.lib")
#   pragma comment(lib, "dwmapi.lib")
#   pragma comment(lib, "uxtheme.lib")
#   pragma comment(lib, "iphlpapi.lib")

#   pragma comment(lib, "ws2_32.lib")
#   pragma comment(lib, "wldap32.lib")
#   pragma comment(lib, "psapi.lib")
#   pragma comment(lib, "userenv.lib")
#   pragma comment(lib, "crypt32.lib")
#   pragma comment(lib, "onecore.lib")
#   pragma comment(lib, "onecoreuap.lib")
#endif

#include <details/cheat_utils.h>

#endif // __CHEAT_PLATFORM_H__