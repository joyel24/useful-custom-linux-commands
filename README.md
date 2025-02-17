# useful-custom-linux-commands
Usefull commands to add to your PATH or copy to /usr/bin
Dont forget to `chmod +x` to make them executable !

ipinfo: Show all interfaces ip configuration and ip routes including gateways.
```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp2s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 3c:07:54:3c:0f:cc brd ff:ff:ff:ff:ff:ff
    altname enx3c07543c0fcc
4: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:42:37:2a:3c:d4 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
7: wlp0s29f7u1u2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether d0:37:45:a0:c8:81 brd ff:ff:ff:ff:ff:ff
    altname wlxd03745a0c881
    inet 192.168.1.64/24 brd 192.168.1.255 scope global dynamic noprefixroute wlp0s29f7u1u2
       valid_lft 84521sec preferred_lft 84521sec
    inet6 fe80::f8de:cd12:fcb:fc4/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever

default via 192.168.1.1 dev wlp0s29f7u1u2 proto dhcp src 192.168.1.64 metric 600 
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown 
192.168.1.0/24 dev wlp0s29f7u1u2 proto kernel scope link src 192.168.1.64 metric 600
```
findfilename: Case insentive file or directory name search
