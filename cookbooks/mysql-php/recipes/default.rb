#
# Cookbook:: mysql-php
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

include_recipe 'mysql-php::packages'
include_recipe 'mysql-php::services'
include_recipe 'mysql-php::config'
