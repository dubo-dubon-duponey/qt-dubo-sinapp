/*
 * Copyright 2012 WebItUp <contact@webitup.fr>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA  02110-1301  USA
 */

#include "sinapp.h"

#include "qtsingleapplication.h"

#include <QtCore/qdebug.h>

namespace RoxeeSinApp{

SinApp::SinApp(const QString &id, int &argc, char **argv)
    : QObject()
{
    qDebug() << "     +++ [Lib] {SinApp}: constructor";
    innerapp  = new QtSingleApplication( id, argc, argv );
}

bool SinApp::isRunning()
{
    return static_cast<QtSingleApplication *>(innerapp)->isRunning();
}

bool SinApp::sendMessage(const QString & message)
{
    return static_cast<QtSingleApplication *>(innerapp)->sendMessage(message);
}

void SinApp::setActivationWindow(QWidget* aw, bool activateOnMessage)
{
    static_cast<QtSingleApplication *>(innerapp)->setActivationWindow(aw, activateOnMessage);
}

}
