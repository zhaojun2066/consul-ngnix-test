#!/bin/bash

./consul-template -consul-addr 127.0.0.1:8500 -template ./demo.tomcat.ctempl:../nginx/demo.tomcat:"../nginx/start.sh"