#!/bin/bash
## fastcodis 2016-04-22
## http://www.aqzt.com
## http://www.aqzt.com/download/go.tar
## http://www.aqzt.com/download/jdk.tar
## http://www.aqzt.com/download/zk.tar
##email: ppabc@qq.com
##robert yu
##centos 7

Install_C(){
yum install -y gcc make gcc-c++ automake lrzsz openssl-devel zlib-* bzip2-* readline* zlib-* bzip2-* git
yum install -y nmap unzip wget lsof xz net-tools
cd /opt/
#wget http://www.aqzt.com/download/go.tar
#wget http://www.aqzt.com/download/jdk.tar
#wget http://www.aqzt.com/download/zk.tar
tar zxvf  go.tar
tar zxvf  jdk.tar
tar zxvf  zk.tar

cat >>/etc/profile<<EOF
export GOROOT=/opt/go
export GOPATH=/opt/go/src/github.com/CodisLabs/codis
JAVA_HOME=/opt/tomcat/jdk1.8.0_77
CLASSPATH=.:/opt/tomcat/jdk1.8.0_77/lib/dt.jar:/opt/tomcat/jdk1.8.0_77/lib/tools.jar
export ZOOKEEPER=/opt/zk
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:/opt/go/src/github.com/CodisLabs/codis/bin:/opt/zk/bin:/opt/tomcat/jdk1.8.0_77/bin:/opt/go/bin:/opt/go/src/github.com/CodisLabs/codis/bin:/opt/zk/bin:/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
EOF
source  /etc/profile
echo  "192.168.10.131  ZooKeeper-node1" >>/etc/hosts
sed -i "s/192.168.10.131/$IP/g" /etc/hosts
mkdir  -p /data/zookeeper/
echo 1 > /data/zookeeper/myid
sed -i "s/192.168.10.131/$IP/g" /opt/go/src/github.com/CodisLabs/codis/etc/codis.json
sed -i "s/192.168.10.131/$IP/g" /opt/go/src/github.com/CodisLabs/codis/etc/dashboard.toml
sed -i "s/192.168.10.131/$IP/g" /opt/go/src/github.com/CodisLabs/codis/scripts/start_codis_ha.sh
sed -i "s/192.168.10.131/$IP/g" /opt/go/src/github.com/CodisLabs/codis/scripts/start_codis_proxy.sh
sed -i "s/192.168.10.131/$IP/g" /opt/go/src/github.com/CodisLabs/codis/scripts/redis-key.sh
Start_C
}

Start_C(){
source  /etc/profile
cd /opt/zk/bin
/opt/zk/bin/zkServer.sh  start
sleep 9s
cd /opt/go/src/github.com/CodisLabs/codis/scripts
sh start_codis_dashboard.sh
sleep 3s
sh start_codis_proxy.sh
sh start_codis_server.sh
sh start_codis_fe.sh
sleep 3s
sh start_codis_ha.sh
sleep 3s
echo ok
}

Stop_C(){
source  /etc/profile
cd /opt/zk/bin
ps -ef | grep 'codis-ha' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis-fe' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep '7001' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep '7002' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis-proxy' | grep -v 'grep' | awk '{print $2}' | xargs kill
ps -ef | grep 'codis-dashboard' | grep -v 'grep' | awk '{print $2}' | xargs kill
sleep 3s
cd /opt/zk/bin
/opt/zk/bin/zkServer.sh  stop

echo ok
}

Restart_C(){
Stop_C
sleep 3s
Start_C
}

Install_A(){
read -p "Please input this machine IP : > " IP
if [ "$IP" == "" ];then
   echo -en "\033[32;49;1m It is empty\n"
   echo -en "\033[39;49;0m"
elif [ $IP == '127.0.0.1' ]; then
   echo -en "\033[32;49;1m It is not standardized\n"
   echo -en "\033[39;49;0m"
else
IPADDR=$IP
regex="\b(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[1-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[1-9])\b"
ckStep2=`echo $IP | egrep $regex | wc -l`
if [ $ckStep2 -eq 0 ]
then
       echo "The string $IPADDR is not a correct ipaddr!!!"
	   exit 0
else
       echo $1
	   Install_C
fi
   echo -en "\033[32;49;1m Setup Complete\n"
   echo -en "\033[39;49;0m"
fi
echo ok
}

Uninstall_A(){
Stop_C
sed -i  '/ZooKeeper/d' /etc/hosts
sed -i  '/opt/d' /etc/profile
rm -rf /opt/go
rm -rf /opt/tomcat
rm -rf /opt/zk
echo ok
}
case "$1" in
 start)
Start_C
 ;;
 stop)
Stop_C
 ;;
 restart)
Restart_C
 ;;
 install)
Install_A
 ;;
 uninstall)
Uninstall_A
 ;;
 *)
 echo "Usage: $SCRIPTNAME {start|stop|restart|install|uninstall}" >&2
 exit 3
 ;;
esac
exit 0
