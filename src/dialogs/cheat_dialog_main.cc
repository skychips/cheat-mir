#include <dialogs/cheat_dialog_main.h>

namespace Cheat
{
    CheatDialogMain::CheatDialogMain(QWidget *parent)
        : QMainWindow(parent)
        , cheat_dialog_main(new Ui::CheatDialogMain)
    {
        setWindowFlags(windowFlags() & ~Qt::WindowMinimizeButtonHint | Qt::WindowMaximizeButtonHint | Qt::WindowCloseButtonHint);
        QApplication::instance()->installEventFilter(this);
        cheat_dialog_main->setupUi(this);
    }

    CheatDialogMain::~CheatDialogMain()
    {
        delete cheat_dialog_main;
    }

    bool CheatDialogMain::adjustVisible()
    {
        if (QWidget::isVisible())
        {
            cheat_main_rect = QWidget::geometry();
            QWidget::hide();
        }
        else
        {
            QWidget::setGeometry(cheat_main_rect);
            QWidget::show();
            QWidget::raise();
        }

        return QWidget::isHidden();
    }

    bool CheatDialogMain::eventFilter(QObject* object, QEvent* event)
    {
        if (nullptr == object || event == nullptr)
        {
            return false;
        }

        if (object == this)
        {
            switch (event->type())
            {
                case QEvent::Type::Close:
                {
                    if (adjustVisible())
                    {
                        event->ignore();
                        return true;
                    }
                }
            }
        }

        return QMainWindow::eventFilter(object, event);
    }

    void CheatDialogMain::changeEvent(QEvent* event)
    {
        printf("最小化\n");
    }
}