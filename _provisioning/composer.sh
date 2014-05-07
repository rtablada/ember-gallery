#!/usr/bin/env bash

echo ">>> Updating Composer"

# Test if Composer is installed
composer --version > /dev/null 2>&1
COMPOSER_IS_INSTALLED=$?

if [ $COMPOSER_IS_INSTALLED -gt 0 ]; then
    echo "ERROR: Laravel requires composer"
    exit 1
fi

composer update --working-dir /vagrant

sudo chmod -R 777 /vagrant/app/storage
sudo chmod -R 777 /vagrant/public/system

php /vagrant/artisan migrate --seed
