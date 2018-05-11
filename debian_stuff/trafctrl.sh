#!/bin/sh

intif=


#$tcb qdisc del dev $intif root handle 1:
#$tcb qdisc add dev $intif root handle 1: htb default 20
#
#$tcb class add dev $intif parent 1: classid 1:1 htb rate 1mbps
#$tcb class add dev $intif parent 1: classid 1:10 htb rate 128kbps ceil 128kbps
#$tcb class add dev $intif parent 1: classid 1:20 htb rate 756kbps ceil 1mbps
#
#$tcb filter add dev $intif parent 1: protocol ip prio 1 u32 \
#                       match ip dst 192.168.12.128/25 \
#                       match ip sport 80 0xffff \
#                       flowid 1:10u
#
#$tcb filter add dev $intif parent 1: protocol ip prio 1 u32 \
#                       match ip dst 192.168.12.128/25 \
#                       match ip sport 443 0xffff \
#                       flowid 1:10

