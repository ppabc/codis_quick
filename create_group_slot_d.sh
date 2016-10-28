/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --list-group
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=1
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=2
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=3
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=4
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=5
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=6
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=7
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --create-group   --gid=8

/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-status
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=1 --addr=127.0.0.1:7001
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=2 --addr=127.0.0.1:7002
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=3 --addr=127.0.0.1:7003
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=4 --addr=127.0.0.1:7004
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=5 --addr=127.0.0.1:7005
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=6 --addr=127.0.0.1:7006
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=7 --addr=127.0.0.1:7007
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080    --group-add      --gid=8 --addr=127.0.0.1:7008

/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7001
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7002
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7003
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7004
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7005
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7006
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7007
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --sync-action --create --addr=127.0.0.1:7008

/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=0 --end=200 --gid=1
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=201 --end=400 --gid=2
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=401 --end=500 --gid=3
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=501 --end=600 --gid=4
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=601 --end=700 --gid=5
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=701 --end=800 --gid=6
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=801 --end=900 --gid=7
/opt/codis/codis-admin  --dashboard=127.0.0.1:18080 --slot-action    --create-range --beg=901 --end=1023 --gid=8
