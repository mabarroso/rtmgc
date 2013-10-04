#!/usr/bin/env bash

cd /vagrant/sync

curl -sS https://getcomposer.org/installer | php
php composer.phar --quiet install
ln -s /vagrant/Sync/vendor/bartosz-maciaszek/php-rtm/src/Rtm vendor/Rtm

svn checkout --quiet http://google-api-php-client.googlecode.com/svn/trunk/ /tmp/google-api
mv /tmp/google-api ./vendor/google-api
