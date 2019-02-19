cookbook_file '/etc/vimrc' do
  source 'vimrc-config'
  action :create
end



