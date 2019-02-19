package 'httpd'

rpm_package 'remi repo' do
  source 'http://rpms.remirepo.net/enterprise/remi-release-7.rpm'
  action :install
end

execute 'yum-config-manager --enable remi-php70'

package %w{ php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo }



