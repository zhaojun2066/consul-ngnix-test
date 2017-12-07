#!/bin/bash
cd `dirname $0`
BIN_DIR=`pwd`
cd ..
DEPLOY_DIR=`pwd`
echo $DEPLOY_DIR
ps -ef|grep cconsul-ngnix-test/nginx/conf | grep -v grep
if [ $? -ne 0 ]
then
  /usr/local/nginx/sbin/nginx -c $DEPLOY_DIR/nginx/nginx.conf
  echo "nginx start"
else
  /usr/local/nginx/sbin/nginx -c $DEPLOY_DIR/nginx/nginx.conf -s reload
  echo "nginx reload"
fi

