#!/usr/bin/env bash

# mc
if ! which mc >/dev/null 2>/dev/null; then
    echo "INSTALL: mc"

    sudo yum install -y mc
else
    echo "VERSION: mc: $(mc --version | head -1)"
fi