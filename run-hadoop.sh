#!/usr/bin/env bash

# Start pseudo-distributed cluster

# Start namenode
service hadoop-hdfs-namenode start

# Start datanode
service hadoop-hdfs-datanode start

# Create directories in HDFS
/usr/lib/hadoop/libexec/init-hdfs.sh

# Start YARN daemons
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start

# Create vagrant HDFS homedir and change ownership
sudo -u hdfs hadoop fs -mkdir /user/vagrant
sudo -u hdfs hadoop fs -chown vagrant:vagrant /user/vagrant

# Run PI Mapreduce job
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 10 100
