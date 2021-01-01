#!/bin/sh

ssh hadoop01 zookeeper/bin/zkServer.sh start
ssh hadoop02 zookeeper/bin/zkServer.sh start
ssh hadoop03 zookeeper/bin/zkServer.sh start

