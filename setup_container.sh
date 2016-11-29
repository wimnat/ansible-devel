#!/bin/bash

yum -y install python-setuptools epel-release
yum -y install ansible python-pip
yum -y remove ansible
pip install boto boto3
ln -s /opt/ansible/hacking/test-module /usr/bin/test-module
mkdir -p ~/.aws
touch ~/.aws/credentials
cp aws_credentials_template ~/.aws/credentials
export PYTHON_BIN=/usr/bin/python
