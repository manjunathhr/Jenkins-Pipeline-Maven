#!/bin/bash 

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASSWD >> /tmp/.auth

#scp to prod machine docker2
scp /tmp/.auth docker2@docker2:/tmp/.auth
scp ./jenkins/deploy/publish docker2@docker2:/tmp/

ssh docker2@docker2 "/tmp/publish"
