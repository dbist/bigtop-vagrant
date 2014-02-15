#!/usr/bin/env bash

# Fetch Bigtop Repo
wget -O /etc/yum.repos.d/bigtop.repo http://www.apache.org/dist/bigtop/bigtop-0.7.0/repos/centos6/bigtop.repo

# Install Hadoop bits
sudo yum install -y hadoop\*

# Setup JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk.x86_64

# Format the namenode
sudo /etc/init.d/hadoop-hdfs-namenode init

# Start pseudo-distributed cluster
for i in hadoop-hdfs-namenode hadoop-hdfs-datanode ; do sudo service  start ; done

# Create directories in HDFS
/usr/lib/hadoop/libexec/init-hdfs.sh

# Start YARN daemons
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start
