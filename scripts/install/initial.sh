#!/usr/bin/env bash

ident="/tmp/initial-setup-is-ok"

if [ ! -f ${ident} ]; then
    echo "INSTALL: initial setup"

    # sudo yum install -y openssl-devel
    # sudo yum reinstall glibc-common

    echo -e "\n" >> ~/.bash_profile
    echo -e "source ~/.profile" >> ~/.bash_profile
    echo -e "\n" >> ~/.bash_profile

    echo -e "cd /vagrant/" >> ~/.bash_profile
    echo -e "\n" >> ~/.bash_profile

    # disable firewall
    sudo service iptables stop
    sudo chkconfig iptables off

    touch ${ident}
else
    echo "INSTALL: initial OK"
fi