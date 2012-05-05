#!/bin/sh
ps -e -o pcpu,cpu,rss,nice,state,cputime,pid,args --sort pcpu | sed '/^ 0.0 /d' | awk '{print $0}{sum+=$1} END {print "Total", sum}'
