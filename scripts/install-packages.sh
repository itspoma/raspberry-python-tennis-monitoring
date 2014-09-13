#!/usr/bin/env bash

# allow only 'vagrant' user
if [ $(whoami) != 'vagrant' ]; then
    echo "sorry, you need to run this script from -vagrant- user"
    exit 1;
fi

# clean yum cache
sudo yum clean all >/dev/null

# setup
find /vagrant/scripts/install/*.sh -type f -exec bash {} \;

# finish
echo "SETUP: finish"