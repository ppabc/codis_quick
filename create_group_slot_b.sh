#!/bin/bash
## codis_quick 2016-08-26
## http://www.aqzt.com
## http://www.aqzt.com/download/go.tar
## http://www.aqzt.com/download/jdk.tar
## http://www.aqzt.com/download/zk.tar
##email: ppabc@qq.com
##robert yu
##centos 7


##codis3 新建6个组
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --list-group
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=1
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=2
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=3
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=4
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=5
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=6
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=7
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=8
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=9
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=10
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=11
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=12
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=13
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=14
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --create-group   --gid=15


##codis3 6个组分别加入codis-server地址
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-status
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=1 --addr=192.168.56.225:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=2 --addr=192.168.56.225:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=3 --addr=192.168.56.225:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=4 --addr=192.168.56.225:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=5 --addr=192.168.56.225:7005

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=6 --addr=192.168.56.236:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=7 --addr=192.168.56.236:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=8 --addr=192.168.56.236:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=9 --addr=192.168.56.236:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=10 --addr=192.168.56.236:7005

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=11 --addr=192.168.56.227:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=12 --addr=192.168.56.227:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=13 --addr=192.168.56.227:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=14 --addr=192.168.56.227:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=15 --addr=192.168.56.227:7005

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=1 --addr=192.168.56.227:7006
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=2 --addr=192.168.56.227:7007
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=3 --addr=192.168.56.227:7008
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=4 --addr=192.168.56.227:7009
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=5 --addr=192.168.56.227:7010

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=6 --addr=192.168.56.225:7006
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=7 --addr=192.168.56.225:7007
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=8 --addr=192.168.56.225:7008
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=9 --addr=192.168.56.225:7009
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=10 --addr=192.168.56.225:7010

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=11 --addr=192.168.56.236:7006
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=12 --addr=192.168.56.236:7007
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=13 --addr=192.168.56.236:7008
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=14 --addr=192.168.56.236:7009
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080    --group-add      --gid=15 --addr=192.168.56.236:7010



#sync每个codis-server地址
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7005

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7006
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7007
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7008
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7009
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.225:7010

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7005

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7006
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7007
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7008
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7009
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.227:7010

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7001
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7002
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7003
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7004
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7005

/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7006
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7007
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7008
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7009
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --sync-action --create --addr=192.168.56.236:7010




#分slot槽到每个组对应
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=0 --end=70 --gid=1
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=71 --end=140 --gid=2
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=141 --end=210 --gid=3
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=211 --end=280 --gid=4
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=281 --end=350 --gid=5
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=351 --end=420 --gid=6
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=421 --end=490 --gid=7
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=491 --end=560 --gid=8
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=561 --end=630 --gid=9
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=631 --end=700 --gid=10
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=701 --end=770 --gid=11
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=771 --end=840 --gid=12
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=841 --end=910 --gid=13
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=911 --end=980 --gid=14
/opt/go/src/github.com/CodisLabs/codis/bin/codis-admin  --dashboard=192.168.56.225:18080 --slot-action    --create-range --beg=981 --end=1023 --gid=15

