#ifndef __CHEAT_PLUGIN_H__
#define __CHEAT_PLUGIN_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <QtPlugin>

Q_IMPORT_PLUGIN(QWindowsVistaStylePlugin)
Q_IMPORT_PLUGIN(QWindowsIntegrationPlugin)
Q_IMPORT_PLUGIN(QICOPlugin)
//Q_IMPORT_PLUGIN(QSvgIconPlugin)
//Q_IMPORT_PLUGIN(QGifPlugin)
//Q_IMPORT_PLUGIN(QICNSPlugin)
//Q_IMPORT_PLUGIN(QJpegPlugin)
//Q_IMPORT_PLUGIN(QSvgPlugin)
//Q_IMPORT_PLUGIN(QTgaPlugin)
//Q_IMPORT_PLUGIN(QTiffPlugin)
//Q_IMPORT_PLUGIN(QWbmpPlugin)
//Q_IMPORT_PLUGIN(QWebpPlugin)

#if defined(_DEBUG)
#   pragma comment(lib, "Qt5Cored.lib")
#   pragma comment(lib, "Qt5Widgetsd.lib")
#   pragma comment(lib, "Qt5Guid.lib")
#   pragma comment(lib, "Qt5EventDispatcherSupportd.lib")
#   pragma comment(lib, "Qt5FontDatabaseSupportd.lib")
#   pragma comment(lib, "Qt5ThemeSupportd.lib")
#   pragma comment(lib, "Qt5AccessibilitySupportd.lib")
#   pragma comment(lib, "Qt5WindowsUIAutomationSupportd.lib")
#   pragma comment(lib, "Qt5AxBased.lib")
#   pragma comment(lib, "Qt5AxContainerd.lib")

#   pragma comment(lib, "qwindowsd.lib")
#   pragma comment(lib, "qwindowsvistastyled.lib")
#   pragma comment(lib, "qgifd.lib")
#   pragma comment(lib, "qicnsd.lib")
#   pragma comment(lib, "qicod.lib")
#   pragma comment(lib, "qjpegd.lib")
#   pragma comment(lib, "qtgad.lib")
#   pragma comment(lib, "qtiffd.lib")
#   pragma comment(lib, "qwbmpd.lib")
#   pragma comment(lib, "qwebpd.lib")
#   pragma comment(lib, "qtlibpngd.lib")
#   pragma comment(lib, "qtfreetyped.lib")
#   pragma comment(lib, "qtharfbuzzd.lib")
#   pragma comment(lib, "qtpcre2d.lib")
#   pragma comment(lib, "qtmaind.lib")
#else
#   pragma comment(lib, "Qt5Core.lib")
#   pragma comment(lib, "Qt5Widgets.lib")
#   pragma comment(lib, "Qt5Gui.lib")
#   pragma comment(lib, "Qt5EventDispatcherSupport.lib")
#   pragma comment(lib, "Qt5FontDatabaseSupport.lib")
#   pragma comment(lib, "Qt5ThemeSupport.lib")
#   pragma comment(lib, "Qt5AccessibilitySupport.lib")
#   pragma comment(lib, "Qt5WindowsUIAutomationSupport.lib")
#   pragma comment(lib, "Qt5AxBase.lib")
#   pragma comment(lib, "Qt5AxContainer.lib")

#   pragma comment(lib, "qwindows.lib")
#   pragma comment(lib, "qwindowsvistastyle.lib")
#   pragma comment(lib, "qgif.lib")
#   pragma comment(lib, "qicns.lib")
#   pragma comment(lib, "qico.lib")
#   pragma comment(lib, "qjpeg.lib")
#   pragma comment(lib, "qtga.lib")
#   pragma comment(lib, "qtiff.lib")
#   pragma comment(lib, "qwbmp.lib")
#   pragma comment(lib, "qwebp.lib")
#   pragma comment(lib, "qtlibpng.lib")
#   pragma comment(lib, "qtfreetype.lib")
#   pragma comment(lib, "qtharfbuzz.lib")
#   pragma comment(lib, "qtpcre2.lib")
#   pragma comment(lib, "qtmain.lib")
#endif

#endif // __CHEAT_PLUGIN_H__