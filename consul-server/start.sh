#!/bin/bash
./consul agent -server -bootstrap-expect 1 -data-dir /tmp/consul -bind 0.0.0.0 -client 0.0.0.0 -ui