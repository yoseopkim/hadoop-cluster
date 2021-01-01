#!/bin/sh

/usr/sbin/haproxy -f zeppelin.cfg &
/usr/sbin/haproxy -f jupyter.cfg &

