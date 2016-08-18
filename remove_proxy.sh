#!/bin/bash
## fastcodis 2016-08.18
## http://www.aqzt.com
## http://www.aqzt.com/download/go.tar
## http://www.aqzt.com/download/jdk.tar
## http://www.aqzt.com/download/zk.tar
##email: ppabc@qq.com
##robert yu
##centos 7


##从codis3上查看有问题的proxy，获取PID，强制移除
codis-admin  --dashboard=192.168.56.102:18080  --remove-proxy --pid=5    --force

