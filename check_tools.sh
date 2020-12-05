#!/bin/bash

which apt || exit 1
which snap || exit 1
which grep || exit 1
which sudo || exit 1
which wget || exit 1
which dconf || exit 1

which python3 || exit 1
PYTHON_VERSION="$(python3 --version | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+')"
PYTHON_MAJOR_VERSION="$(echo $PYTHON_VERSION | awk -F'.' '{print $1}')"
PYTHON_MINOR_VERSION="$(echo $PYTHON_VERSION | awk -F'.' '{print $2}')"
if [ "$PYTHON_MAJOR_VERSION" -ne "3" ]; then
    echo 'Python major version should be 3.'
    exit 2
fi
if [ "$PYTHON_MINOR_VERSION" -lt "6" ]; then
    echo 'Python version should be 3.6 or later.'
    exit 2
fi
