service 'httpd' do
  action [:enable, :start]
  subscribes :reload, ['template[/var/www/html/login.php]', 'template[/var/www/html/authen_login.php]', 'template[/var/www/html/db_connect.php]', 'template[/var/www/html/httpd.conf]', 'template[/var/www/html/style.css]'], :immediately
end

