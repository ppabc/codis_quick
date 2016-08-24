#!/bin/bash
## fastcodis 2016-08-24
## http://www.aqzt.com
## http://www.aqzt.com/download/go.tar
## http://www.aqzt.com/download/jdk.tar
## http://www.aqzt.com/download/zk.tar
##email: ppabc@qq.com
##robert yu
##centos 7


## 停止 codis3 
ps -ef | grep 'codis' | grep 'codis-ha' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep 'codis-fe' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7001' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7002' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7003' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7004' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7005' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7006' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7007' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7008' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7009' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7010' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7011' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7012' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7013' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7014' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7015' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep '7016' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep 'codis-proxy' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis' | grep 'codis-dashboard' | grep -v 'grep' | awk '{print $2}' | xargs kill
sleep 3s
ps aux  |grep codis
echo ok

