#!/bin/sh

docker network create analysis-platform-network

docker run -it --privileged \
--name analysis-hadoop01 -h hadoop01 \
-v /vaults/docker/analysis-hadoop01:/vaults \
--network=analysis-platform-network \
centos:7 /bin/bash

docker run -it --privileged \
--name analysis-hadoop02 -h hadoop02 \
-v /vaults/docker/analysis-hadoop02:/vaults \
--network=analysis-platform-network \
centos:7 /bin/bash

docker run -it --privileged \
--name analysis-hadoop03 -h hadoop03 \
-v /vaults/docker/analysis-hadoop03:/vaults \
--network=analysis-platform-network \
centos:7 /bin/bash

docker run -it --privileged \
--name analysis-hadoop04 -h hadoop04 \
-v /vaults/docker/analysis-hadoop04:/vaults \
--network=analysis-platform-network \
centos:7 /bin/bash

docker run -it --privileged \
--name analysis-hadoop05 -h hadoop05 \
-v /vaults/docker/analysis-hadoop05:/vaults \
--network=analysis-platform-network \
centos:7 /bin/bash

docker run -it --privileged \
--name analysis-mysql -h mysql \
-v /vaults/docker/analysis-mysql:/vaults \
--network=analysis-platform-network \
ubuntu:18.04 /bin/bash

docker run -it --privileged \
--name analysis-proxy -h proxy \
-v /vaults/docker/analysis-proxy:/vaults \
-p 8087:8087 -p 8088:8088 \
--network=analysis-platform-network \
centos:7 /bin/bash

