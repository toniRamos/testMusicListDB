#!/usr/bin/env bash
THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $THISDIR
echo "Update db.properties"
sed -i "s/PWD/$MYSQL_ROOT_PASSWORD/g" db.properties
sed -i "s/DBNAME/$MYSQL_DATABASE_NAME/g" db.properties
echo "Creating database $MYSQL_DATABASE_NAME"
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE_NAME;"
echo "Using phing to create the schema"
cd /phing && mysql -u root -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE_NAME < changelog_table.sql && phing update
