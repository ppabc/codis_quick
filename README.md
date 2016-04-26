fastcodis
===========

实现centos7系统下快速安装codis3，快速安装。

codis版本：codis-3.0.3.tar.gz

go使用版本：go1.5.2.linux-amd64.tar.gz

jdk版本：jdk1.8.0_77

zookeeper版本：zookeeper-3.4.8.tar.gz

文件路径/opt/目录下

go 路径：/opt/go

jdk路径：/opt/tomcat/jdk1.8.0_77

zookeeper路径：/opt/zk

codis路径：/opt/go/src/github.com/CodisLabs/codis

安装方法
Usage: $SCRIPTNAME {start|stop|restart|install|uninstall}

例子：bash start.sh  install

当输入install时，开始安装出现提示

Please input this machine IP : >

输入本机IP即可

安装完成后访问http://IP地址:8080