#include <details/cheat_exports.h>
#include <details/cheat_plugin.h>
#include <memory/cheat_memory_search.h>

BOOL APIENTRY DllMain(HMODULE hinstance,
                      DWORD reason,
                      LPVOID reserved)
{
    switch (reason)
    {
        case DLL_PROCESS_ATTACH:
        {
            DisableThreadLibraryCalls(hinstance);
            break;
        }
        case DLL_THREAD_ATTACH:
        {
            break;
        }
        case DLL_THREAD_DETACH:
        {
            break;
        }
        case DLL_PROCESS_DETACH:
        {
            break;
        }
        default: break;
    }

    return TRUE;
}