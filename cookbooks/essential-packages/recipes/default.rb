#
# Cookbook:: essential-packages
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

include_recipe 'essential-packages::packages'
include_recipe 'essential-packages::services'
include_recipe 'essential-packages::config'
