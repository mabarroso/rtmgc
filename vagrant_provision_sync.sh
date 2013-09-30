#!/usr/bin/env bash
sudo apt-get update >/dev/null 2>&1

echo "Installing essentials..."
    apt-get install -y bash curl openssl git subversion php5-cli >/dev/null 2>&1

echo "Tuning sync..."
    su - -c '/bin/bash --login /vagrant/vagrant_provision_tuning_sync.sh' vagrant
