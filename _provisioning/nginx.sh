#!/usr/bin/env bash

echo ">>> Updating Nginx"

# Chech that Nginx is installed
nginx -v > /dev/null 2>&1
NGINX_IS_INSTALLED=$?

if [ $NGINX_IS_INSTALLED -eq 0 ]; then
    # Change default vhost created
    sed -i "s/root \/vagrant/root \/vagrant\/public/" /etc/nginx/sites-available/vagrant
    sudo service nginx restart
fi
