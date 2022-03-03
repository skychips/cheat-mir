#include <details/cheat_exports.h>
#include <details/cheat_plugin.h>

#include <QApplication>
#include <QWidget>
#include <dialogs/cheat_dialog_main.h>

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


int main(int argc, char *argv[], char *envp[])
{
    QApplication a(argc, argv);
    QWidget widget;
    Mir::CheatDialogMain w(&widget);
    w.setAttribute(Qt::WA_DeleteOnClose);
    w.show();
    a.exec();

    return 0;
}