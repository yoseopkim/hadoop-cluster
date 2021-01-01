#!/bin/sh

cat ../hadoop/.ssh/id_rsa.pub > ../hadoop/.ssh/authorized_keys
cat ../../analysis-hadoop02/hadoop/.ssh/id_rsa.pub >> ../hadoop/.ssh/authorized_keys
cat ../../analysis-hadoop03/hadoop/.ssh/id_rsa.pub >> ../hadoop/.ssh/authorized_keys
cat ../../analysis-hadoop04/hadoop/.ssh/id_rsa.pub >> ../hadoop/.ssh/authorized_keys
cat ../../analysis-hadoop05/hadoop/.ssh/id_rsa.pub >> ../hadoop/.ssh/authorized_keys

