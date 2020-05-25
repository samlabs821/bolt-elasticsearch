#!/usr/bin/env bash

i=`ps -eaf | grep -i httpd | grep -v grep | grep -v bash | wc -l`

if [[ $i > 0 ]]
then
  echo "Apache is running"
else
  echo "Starting Apache"
  systemctl start nginx
fi
