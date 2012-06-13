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

#ifndef ROXEESINAPP_SINAPP_H
#define ROXEESINAPP_SINAPP_H

#include "libroxeesinapp_global.h"

#include <QtGui/qapplication.h>

namespace RoxeeSinApp{

class LIBROXEESINAPPSHARED_EXPORT SinApp : public QObject
{
    Q_OBJECT
public:
    explicit SinApp(const QString &id, int &argc, char **argv);

    bool isRunning();
    bool sendMessage(const QString & message);
    void setActivationWindow(QWidget* aw, bool activateOnMessage);

    // Allow to access the actual qtsingleapp object
    QApplication * innerapp;

};

}

#endif // ROXEESINAPP_SINAPP_H
