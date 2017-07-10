{# Copyright (c) Pelagicore AB 2016 #}
#############################################################################
## This is an auto-generated file.
## Do not edit! All changes made to it will be lost.
#############################################################################

QT += qml quick
CONFIG += c++11

HEADERS += \
    $$PWD/{{module.module_name|lower}}module.h \
{% for interface in module.interfaces %}
    $$PWD/abstract{{interface|lower}}.h \
{% endfor %}
{% for struct in module.structs %}
    $$PWD/{{struct|lower}}.h \
    $$PWD/{{struct|lower}}model.h \
{% endfor %}
    $$PWD/variantmodel.h


SOURCES += \
    $$PWD/{{module.module_name|lower}}module.cpp \
{% for interface in module.interfaces %}
    $$PWD/abstract{{interface|lower}}.cpp \
{% endfor %}
{% for struct in module.structs %}
    $$PWD/{{struct|lower}}.cpp \
    $$PWD/{{struct|lower}}model.cpp \
{% endfor %}
    $$PWD/variantmodel.cpp

