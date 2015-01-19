#!/bin/bash

useradd -m -G users -s /bin/bash vagrant
mkdir -p /home/vagrant/.ssh
wget --no-check-certificate \
    'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' \
    -O ~vagrant/.ssh/authorized_keys
chown -R vagrant ~vagrant/.ssh
chmod -R go-rwsx ~vagrant/.ssh
