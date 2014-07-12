#!/bin/bash

echo "Installing Puppet modules"
puppet module install maestrodev-rvm
#puppet module install puppetlabs-mysql
#puppet module install jfryman-nginx
echo "Finished Puppet modules installation" 
