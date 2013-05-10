/**
 * Copyright (c) 2012, WebItUp <contact@webitup.fr>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <QDebug>
#include <QWidget>
#include <libroxeesinapp/sinapp.h>
#include <libroxeesinapp/root.h>


int main(int argc, char *argv[])
{
    RoxeeSinApp::Root * root = new RoxeeSinApp::Root();
    RoxeeSinApp::SinApp app(QString::fromLatin1("IDENTIFIER"), argc, argv);

    qDebug() << root->getName();
    qDebug() << root->getBuildType();
    qDebug() << root->getLinkType();
    qDebug() << root->getQt();
    qDebug() << root->getVendor();
    qDebug() << root->getVersion();
    qDebug() << root->getRevision();
    qDebug() << root->getChangeset();

    int a;

    if(app.isRunning()){
        qDebug() << "[A] Application already here! Refusing to start, and focus the one.";
        // Signal the other instance so that it can focus
        a = !app.sendMessage(QString::fromLatin1("dock-channel/die"));
    }else{
        qDebug() << "[A] Starting app";
        QWidget * t = new QWidget();
        t->show();
        app.setActivationWindow(t, true);
        a = app.innerapp->exec();
    }
    return a;
}
