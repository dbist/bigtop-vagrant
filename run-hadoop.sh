#!/usr/bin/env bash

# Start pseudo-distributed cluster
for i in hadoop-hdfs-namenode hadoop-hdfs-datanode ; do sudo service  start ; done

# Create directories in HDFS
/usr/lib/hadoop/libexec/init-hdfs.sh

# Start YARN daemons
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start
