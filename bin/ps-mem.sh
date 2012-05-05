#!/bin/sh
ps -e -orss,pmem,pid,args | sort -b -k1,1n | sed '/^.*0  0.0/d' | awk '{print $0}{sum+=$1} END {print "Total", sum}'
