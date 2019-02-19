firewall_rule 'mysql' do
 port 3306
 protocol :tcp
 command :allow
end 
