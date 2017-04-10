{# Copyright (c) Pelagicore AB 2016 #}
{% set class = 'Qml{0}'.format(interface) %}
/*
 * This is a preserved file.
 * Changes will not be overriden by the generator.
 * To reset the file you need to delete it first.
 */

#pragma once

#include <QtCore>

#include "generated/qml{{module.module_name|lower}}module.h"
#include "generated/qmlabstract{{interface|lower}}.h"

class {{class}} : public QmlAbstract{{interface}}
{
    Q_OBJECT
public:
    {{class}}(QObject *parent = nullptr);
    virtual ~{{class}}();

    static void registerQmlTypes(const QString& uri, int majorVersion=1, int minorVersion=0);
};
