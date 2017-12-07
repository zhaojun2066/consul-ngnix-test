#!/bin/bash

cd `dirname $0`
BIN_DIR=`pwd`
cd ..
DEPLOY_DIR=`pwd`

nohup  $DEPLOY_DIR/consul-server/consul agent -server -bootstrap-expect 1 -data-dir /tmp/consul -bind 0.0.0.0 -client 0.0.0.0 -ui > consul.log 2>&1 &
nohup  $DEPLOY_DIR/consul-template/consul-template -consul-addr 127.0.0.1:8500 -template $DEPLOY_DIR/consul-template/demo.tomcat.ctempl:$DEPLOY_DIR/nginx/demo.tomcat:"$DEPLOY_DIR/nginx/start.sh" > st_temlate.log 2>&1 &


ps -ef|grep consul-ngnix-test/nginx/conf | grep -v grep
if [ $? -ne 0 ]
then
  sudo /usr/local/nginx/sbin/nginx -c $DEPLOY_DIR/nginx/nginx.conf
  echo "nginx start"
else
  sudo /usr/local/nginx/sbin/nginx -c $DEPLOY_DIR/nginx/nginx.conf -s reload
  echo "nginx reload"
fi
