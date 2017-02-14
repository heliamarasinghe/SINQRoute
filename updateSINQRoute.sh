#!/bin/bash
now=$(date +"%Y%m%d")
mkdir ~/BACKUP/$now &&
mv SINQRouteCtrl/ ~/BACKUP/$now
mv SINQRouteMan/ ~/BACKUP/$now
mv SINQRouteTopo/ ~/BACKUP/$now
scp -r openstack@192.168.0.201:~/pox/ext/SINQRouteCtrl .
cp -r ../SINQRouteLocal/SINQRouteMan .
scp -r openstack@192.168.0.228:~/SINQRouteTopo .
