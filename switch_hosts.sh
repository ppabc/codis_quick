#!/bin/bash
## fastcodis 2016-04-22
## http://www.aqzt.com
## http://www.aqzt.com/download/go.tar
## http://www.aqzt.com/download/jdk.tar
## http://www.aqzt.com/download/zk.tar
##email: ppabc@qq.com
##robert yu
##centos 7

_ports=$(nmap 192.168.1.12 -p 19000 |grep '19000' | awk '{print $2}')

if [[ "${_ports}" == "open" ]]
then
    echo "codis-dashboard is ok"
else
    echo "192.168.1.15  codis.aqzt.com" >> /etc/hosts
fi