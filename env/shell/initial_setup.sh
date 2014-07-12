#!/bin/bash

echo "Running yum update"
yum -y --nogpgcheck install 'http://www.elrepo.org/elrepo-release-6-6.el6.elrepo.noarch.rpm' >/dev/null
#yum -y --nogpgcheck install 'https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm' >/dev/null
yum -y install centos-release-SCL >/dev/null
yum clean all >/dev/null
yum -y check-update >/dev/null
yum -y update > /dev/null
echo "Finished yum update"

echo "Installing  git"
yum -y --nogpgcheck install git > /dev/null
echo "Finished running git"

echo 'Updating to Ruby 1.9.3'
yum -y install centos-release-SCL >/dev/null 2>&1
yum remove ruby >/dev/null 2>&1
yum -y install ruby193 ruby193-ruby-irb ruby193-ruby-doc ruby193-libyaml rubygems >/dev/null 2>&1
yum -y --nogpgcheck install 'https://yum.puppetlabs.com/el/6/dependencies/x86_64/ruby-rgen-0.6.5-2.el6.noarch.rpm' >/dev/null 2>&1
gem update --system >/dev/null 2>&1
gem install haml >/dev/null 2>&1

yum -y --nogpgcheck install 'https://yum.puppetlabs.com/el/6/products/x86_64/hiera-1.3.2-1.el6.noarch.rpm' >/dev/null
yum -y --nogpgcheck install 'https://yum.puppetlabs.com/el/6/products/x86_64/facter-1.7.5-1.el6.x86_64.rpm' >/dev/null
yum -y --nogpgcheck install 'https://yum.puppetlabs.com/el/6/dependencies/x86_64/rubygem-json-1.5.5-1.el6.x86_64.rpm' >/dev/null
yum -y --nogpgcheck install 'https://yum.puppetlabs.com/el/6/dependencies/x86_64/ruby-json-1.5.5-1.el6.x86_64.rpm' >/dev/null
yum -y --nogpgcheck install 'https://yum.puppetlabs.com/el/6/dependencies/x86_64/ruby-shadow-2.2.0-2.el6.x86_64.rpm' >/dev/null
yum -y --nogpgcheck install 'https://yum.puppetlabs.com/el/6/dependencies/x86_64/ruby-augeas-0.4.1-3.el6.x86_64.rpm' >/dev/null
echo 'Finished updating to Ruby 1.9.3'

echo 'Installing basic development tools (CentOS)'
yum -y groupinstall 'Development Tools' >/dev/null
echo 'Finished installing basic development tools (CentOS)'

echo 'Installing VIM'
yum -y install vim >/dev/null
echo 'Finished installing VIM'

echo 'Installing wget'
yum -y install wget >/dev/null
echo 'Finished installing wget'

echo "Installing puppet"

yum -y --nogpgcheck install "http://yum.puppetlabs.com/el/6/products/x86_64/puppet-3.4.3-1.el6.noarch.rpm" >/dev/null

yum -y --nogpgcheck install yum-versionlock puppet > /dev/null

yum versionlock puppet

echo "Finished installing puppet"
