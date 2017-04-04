#!/bin/bash

# Update Centos (exclude kernel)
yum update -y --exclude=kernel

# Install tools
yum install -y tree git unzip screen nc telnet

