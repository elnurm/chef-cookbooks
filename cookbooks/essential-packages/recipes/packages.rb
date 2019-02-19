
package 'epel-release'
package %w{ vim nfs-utils wget htop python-pip yum-utils mlocate firewalld tree device-mapper-persistent-data lvm2 }

rpm_package 'git version 2' do
  source 'http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm'
  action :install
end


firewall 'default' do
  action :install
end

