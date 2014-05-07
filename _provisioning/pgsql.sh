#!/usr/bin/env bash

echo ">>> Setting up Postgres"

# Test if Composer is installed
psql --version > /dev/null 2>&1
PGSQL_IS_INSTALLED=$?

if [ $PGSQL_IS_INSTALLED -gt 0 ]; then
    echo "ERROR: Postgres isn't installed"
    exit 1
fi

echo ">>> Creating user" $1 " with password " $2
sudo -u postgres psql -c "CREATE ROLE $1 LOGIN UNENCRYPTED PASSWORD '$2' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;"
echo ">>> Creating database " $3
sudo -u postgres createdb $3 -O $1

# Make sure changes are reflected by restarting
sudo service postgresql restart
