#!/bin/sh

ssh hadoop01 zookeeper/bin/zkServer.sh stop
ssh hadoop02 zookeeper/bin/zkServer.sh stop
ssh hadoop03 zookeeper/bin/zkServer.sh stop

