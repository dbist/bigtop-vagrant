#!/usr/bin/env bash

# Fetch Bigtop Repo
wget -O /etc/yum.repos.d/bigtop.repo http://www.apache.org/dist/bigtop/bigtop-0.7.0/repos/centos6/bigtop.repo

# Setup JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk.x86_64

# Install Hadoop bits
sudo yum install -y hadoop\*

# Format the namenode
sudo /etc/init.d/hadoop-hdfs-namenode init

