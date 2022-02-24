#include <dialogs/cheat_dialog_main.h>

namespace Mir
{
    CheatDialogMain::CheatDialogMain(QWidget *parent)
        : QMainWindow(parent)
        , cheat_dialog_main(new Ui::CheatDialogMain)
    {
        setWindowFlags(windowFlags() & ~Qt::WindowType::WindowMinMaxButtonsHint);
        cheat_dialog_main->setupUi(this);

        QApplication::instance()->installEventFilter(this);
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

    bool CheatDialogMain::eventFilter(QObject * object, QEvent * event)
    {
        if (QEvent::Type::Close == event->type())
        {
            if (adjustVisible())
            {
                return true;
            }
        }
        return QMainWindow::eventFilter(object, event);
    }
}