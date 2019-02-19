template '/var/www/html/login.php' do
  source 'login.php.erb'
end

template '/var/www/html/authen_login.php' do
  source 'authen_login.php.erb'
end

template '/var/www/html/db_connect.php' do
  source 'db_connect.php.erb'
end

template '/var/www/html/httpd.conf' do
  source 'httpd.conf.erb'
end

template '/var/www/html/style.css' do
  source 'style.css.erb'
end

firewall_rule 'ssh' do
  port 22
  command :allow
end

firewall_rule 'http' do
  port 80
  protocol :tcp
  command :allow
end



