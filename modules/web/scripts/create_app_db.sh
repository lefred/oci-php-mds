#!/bin/bash

DEDICATED=${dedicated}
INSTANCE=${instancenb}

if [ "$DEDICATED" == "true" ]
then
   appschema="${app_schema}$INSTANCE"
   appname="${app_name}$INSTANCE"
else
   appschema="${app_schema}"
   appname="${app_name}"
fi


mysqlsh --user ${admin_username} --password=${admin_password} --host ${mds_ip} --sql -e "CREATE DATABASE $appschema;"
mysqlsh --user ${admin_username} --password=${admin_password} --host ${mds_ip} --sql -e "CREATE USER $appname identified by '${app_password}';"
mysqlsh --user ${admin_username} --password=${admin_password} --host ${mds_ip} --sql -e "GRANT ALL PRIVILEGES ON $appschema.* TO $appname;"

echo "Application Database and User created !"
echo "DB USER = $appname"
echo "DB SCHEMA = $appschema"
