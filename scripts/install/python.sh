#!/usr/bin/env bash

# mc
if ! which python >/dev/null 2>/dev/null; then
    echo "INSTALL: mc"

    sudo yum install -y python
    sudo yum -y install python-pip
else
    echo "VERSION: python: $(python -V)"
fi