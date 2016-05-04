#!/bin/sh
## fastcodis 2016-04-22
## http://www.aqzt.com
## http://www.aqzt.com/download/go.tar
## http://www.aqzt.com/download/jdk.tar
## http://www.aqzt.com/download/zk.tar
##email: ppabc@qq.com
##robert yu
##centos 7
source /etc/profile

restartproxy()
{
cd /opt/go/src/github.com/CodisLabs/codis/scripts
sh start_codis_proxy.sh
}

restartdashboard()
{
cd /opt/go/src/github.com/CodisLabs/codis/scripts
sh start_codis_dashboard.sh
}

restartcodis_fe()
{
cd /opt/go/src/github.com/CodisLabs/codis/scripts
sh start_codis_fe.sh
}

_proxy=$(ps -ef | grep "codis-proxy" | grep -v grep)
_dashboard=$(ps -ef | grep "codis-dashboard" | grep -v grep)
_codis_fe=$(ps -ef | grep "codis-fe" | grep -v grep)

if [[ "${_proxy}aa" == "aa" ]]
then
    restartproxy;
else
    cd /opt/go/src/github.com/CodisLabs/codis/scripts
    _proxy=$(cat /opt/go/src/github.com/CodisLabs/codis/logs/proxy.log* | tail -n 1 | grep "wait to be online")
    if [[ "${_proxy}aa" != "aa" ]]
    then
        #kill the proxy
        pid=$(ps -ef | grep "codis-proxy" | grep -v grep | awk '{print $2}')
        kill $pid
        restartproxy;
    fi
fi

if [[ "${_dashboard}aa" == "aa" ]]
then
    restartdashboard;
else
    echo "codis-dashboard is ok"
fi

if [[ "${_codis_fe}aa" == "aa" ]]
then
    restartcodis_fe;
else
    echo "codis-dashboard is ok"
fi


