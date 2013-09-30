#!/usr/bin/env bash

cd /vagrant/sync

curl -sS https://getcomposer.org/installer | php
php composer.phar --quiet install

svn checkout --quiet http://google-api-php-client.googlecode.com/svn/trunk/ /tmp/google-api-php-client
mv /tmp/google-api-php-client ./vendor/google-api-php-client
