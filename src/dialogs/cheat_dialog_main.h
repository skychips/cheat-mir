#ifndef __CHEAT_DIALOG_MAIN_H__
#define __CHEAT_DIALOG_MAIN_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>
#include <dialogs/cheat_dialog_main.hxx>

#include <QMainWindow>
#include <QDialog>
#include <QLabel>
#include <QTimer>
#include <QDateTime>

namespace Mir
{
    class CheatDialogMain : public QMainWindow
    {
    public:
        Q_OBJECT;
    public:
        explicit CheatDialogMain(QWidget *parent = nullptr);
        virtual ~CheatDialogMain();
    public:
        bool adjustVisible();
    private:
        bool eventFilter(QObject* object, QEvent* event);
    private:
        Ui::CheatDialogMain*                        cheat_dialog_main;
    private:
        QRect                                       cheat_main_rect;
    };
}

#endif // __CHEAT_DIALOG_MAIN_H__