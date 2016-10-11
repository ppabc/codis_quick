#!/bin/bash
## codis_quick 2016-10-11
## http://www.aqzt.com
##email: ppabc@qq.com
##robert yu
##centos 7

##codis3 新建6个组
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --list-group
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=1
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=2
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=3
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=4
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=5
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=6
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=7
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=8
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=9
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=10
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=11
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --create-group   --gid=12


##codis3 6个组分别加入codis-server地址
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-status
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=1 --addr=192.168.21.183:7001
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=2 --addr=192.168.21.183:7002
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=3 --addr=192.168.21.183:7003
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=4 --addr=192.168.21.183:7004

/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=5 --addr=192.168.21.230:7001
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=6 --addr=192.168.21.230:7002
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=7 --addr=192.168.21.230:7003
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=8 --addr=192.168.21.230:7004

/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=9  --addr=192.168.21.231:7001
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=10 --addr=192.168.21.231:7002
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=11 --addr=192.168.21.231:7003
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=12 --addr=192.168.21.231:7004

/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=1 --addr=192.168.21.231:7005
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=2 --addr=192.168.21.231:7006
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=3 --addr=192.168.21.231:7007
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=4 --addr=192.168.21.231:7008

/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=5 --addr=192.168.21.183:7005
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=6 --addr=192.168.21.183:7006
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=7 --addr=192.168.21.183:7007
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=8 --addr=192.168.21.183:7008

/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=9  --addr=192.168.21.230:7005
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=10 --addr=192.168.21.230:7006
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=11 --addr=192.168.21.230:7007
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080    --group-add      --gid=12 --addr=192.168.21.230:7008


#sync每个codis-server地址
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7001
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7002
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7003
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7004
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7005
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7006
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7007
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.183:7008

/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7001
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7002
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7003
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7004
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7005
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7006
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7007
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.231:7008

/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7001
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7002
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7003
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7004
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7005
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7006
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7007
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --sync-action --create --addr=192.168.21.230:7008


#分slot槽到每个组对应
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=0 --end=85 --gid=1
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=86 --end=170 --gid=2
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=171 --end=255 --gid=3
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=256 --end=340 --gid=4
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=341 --end=425 --gid=5
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=426 --end=510 --gid=6
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=511 --end=595 --gid=7
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=596 --end=680 --gid=8
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=681 --end=765 --gid=9
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=766 --end=850 --gid=10
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=851 --end=935 --gid=11
/opt/codis/codis-admin  --dashboard=192.168.21.183:18080 --slot-action    --create-range --beg=936 --end=1023 --gid=12


