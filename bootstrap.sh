#!/bin/sh
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
yum -y install puppet
echo "server = ec2-54-208-160-228.compute-1.amazonaws.com" >> /etc/puppet/puppet.conf
service puppet start
sleep 60
puppet agent -tdv
puppet agetn -tdv
