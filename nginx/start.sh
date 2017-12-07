#!/bin/bash
cd `dirname $0`
BIN_DIR=`pwd`

ps -ef|grep nginx | grep -v grep
if [ $? -ne 0 ]
then
  sudo /usr/local/nginx/sbin/nginx  -c   $BIN_DIR/nginx.conf
  echo "nginx start"
else
  sudo /usr/local/ningx/sbin/nginx  -c   $BIN_DIR/nginx.conf -s reload
  echo "nginx reload"
fi

