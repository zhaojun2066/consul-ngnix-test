#!/bin/bash
ps -ef|grep nginx | grep -v grep
if [ $? -ne 0 ]
then
  sudo /usr/local/nginx/sbin/nginx -c ./nginx.conf
  echo "nginx start"
else
  sudo /usr/local/ningx/sbin/nginx -c ./nginx.conf -s reload
  echo "nginx reload"
fi

