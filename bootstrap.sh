#!/usr/bin/env bash

# Add hosts to /etc/hosts
cat /vagrant/hosts >> /etc/hosts

# Stop firewall
service iptables stop

# Install latest Java
yum install -y java-1.7.0-openjdk.x86_64
