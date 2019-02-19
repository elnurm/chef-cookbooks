package 'net-tools'
package 'perl-Data-Dumper'

rpm_package 'mysql 5.5' do
  source 'http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm'
  action :install
end

package 'mysql-server'
