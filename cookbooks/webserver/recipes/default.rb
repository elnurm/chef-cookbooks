#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'webserver::packages'
include_recipe 'webserver::services'
include_recipe 'webserver::config'
