#ifndef __CHEAT_ARCH_H__
#define __CHEAT_ARCH_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <ctype.h>
#include <cassert>
#include <stdio.h>
#include <stdint.h>
#include <cstdint>

#ifdef __CYGWIN__
#   define H_OS_CYGWIN                                                                          1
#   elif defined(__MINGW__) || defined(__MINGW32__) || defined(__MINGW64__)
#       define H_OS_WINDOWS                                                                     1
#       define H_OS_WINDOWS_MINGW                                                               1
#   elif defined(_MSC_VER)
#       undef WIN32_LEAN_AND_MEAN
#       define NOMINMAX                                                                         1
#       include <windows.h>
#       define H_OS_WINDOWS                                                                     1
#   ifdef _WIN32_WCE
#       define H_OS_WINDOWS_MOBILE                                                              1
#   elif defined(WINAPI_FAMILY)
#       include <winapifamily.h>
#   if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#       define H_OS_WINDOWS_DESKTOP                                                             1
#   elif WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_PHONE_APP)
#       define H_OS_WINDOWS_PHONE                                                               1
#   elif WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
#       defineH_OS_WINDOWS_RT                                                                   1
#   elif WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_TV_TITLE)
#       define H_OS_WINDOWS_PHONE                                                               1
#       define H_OS_WINDOWS_TV_TITLE                                                            1
#   else
#       define H_OS_WINDOWS_DESKTOP                                                             1
#   endif
#   else
#       define H_OS_WINDOWS_DESKTOP                                                             1
#   endif  // _WIN32_WCE
#endif  // __CYGWIN__

/*
#if defined(__LP64__) || defined(_WIN64) || defined(__x86_64__) || defined(_M_X64) || defined(__ia64) || defined (_M_IA64) || defined(__aarch64__) || defined(__powerpc64__)
    typedef long long               s96;
    typedef unsigned long long      u96;
#else
    typedef int                     s96;
    typedef unsigned int            u96;
#endif
*/

#endif // __CHEAT_ARCH_H__