service 'firewalld' do
  action [:start, :enable]
  retries 3
end
