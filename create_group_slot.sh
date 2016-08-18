#!/bin/bash
## codis_quick 2016-08.18
## http://www.aqzt.com
## http://www.aqzt.com/download/go.tar
## http://www.aqzt.com/download/jdk.tar
## http://www.aqzt.com/download/zk.tar
##email: ppabc@qq.com
##robert yu
##centos 7


##codis3 新建6个组
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --list-group
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --create-group   --gid=1
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --create-group   --gid=2
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --create-group   --gid=3
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --create-group   --gid=4
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --create-group   --gid=5
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --create-group   --gid=6

##codis3 6个组分别加入codis-server地址
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-status
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=1 --addr=192.168.56.102:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=1 --addr=192.168.56.103:7002

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=2 --addr=192.168.56.102:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=2 --addr=192.168.56.103:7003

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=3 --addr=192.168.56.102:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=3 --addr=192.168.56.103:7004

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=4 --addr=192.168.56.102:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=4 --addr=192.168.56.103:7005

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=5 --addr=192.168.56.102:7005
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=5 --addr=192.168.56.106:7001

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=6 --addr=192.168.56.103:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080    --group-add      --gid=6 --addr=192.168.56.106:7002

##空闲codis-server，预留codis-server地址
#192.168.56.106:7003
#192.168.56.106:7004
#192.168.56.106:7005

#sync每个codis-server地址
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.102:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.102:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.102:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.102:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.102:7005
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.103:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.103:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.103:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.103:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.103:7005
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.106:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.106:7002
#/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.106:7003
#/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.106:7004
#/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --sync-action --create --addr=192.168.56.106:7005

#分slot槽到每个组对应
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --slot-action    --create-range --beg=0 --end=200 --gid=1
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --slot-action    --create-range --beg=201 --end=400 --gid=2
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --slot-action    --create-range --beg=401 --end=600 --gid=3
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --slot-action    --create-range --beg=601 --end=800 --gid=4
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --slot-action    --create-range --beg=801 --end=1000 --gid=5
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.102:18080 --slot-action    --create-range --beg=1001 --end=1023 --gid=6

