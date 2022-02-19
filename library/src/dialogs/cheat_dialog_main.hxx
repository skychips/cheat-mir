/********************************************************************************
** Form generated from reading UI file 'mainZwQfrx.ui'
**
** Created by: Qt User Interface Compiler version 6.2.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef MAINZWQFRX_H
#define MAINZWQFRX_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_CheatDialogMain
{
public:
    QWidget *centralwidget;

    void setupUi(QMainWindow *CheatDialogMain)
    {
        if (CheatDialogMain->objectName().isEmpty())
            CheatDialogMain->setObjectName(QString::fromUtf8("CheatDialogMain"));
        CheatDialogMain->resize(400, 450);
        CheatDialogMain->setMinimumSize(QSize(400, 450));
        CheatDialogMain->setMaximumSize(QSize(400, 450));
        centralwidget = new QWidget(CheatDialogMain);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        CheatDialogMain->setCentralWidget(centralwidget);

        retranslateUi(CheatDialogMain);

        QMetaObject::connectSlotsByName(CheatDialogMain);
    } // setupUi

    void retranslateUi(QMainWindow *CheatDialogMain)
    {
        CheatDialogMain->setWindowTitle(QString());
    } // retranslateUi

};

namespace Ui
{
    class CheatDialogMain : public Ui_CheatDialogMain {};
} // namespace Ui

QT_END_NAMESPACE

#endif // MAINZWQFRX_H
