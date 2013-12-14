include_recipe "user"

user_account 'deployer' do
  comment   'Deployment user'
  home      '/home/deployer'
  action    [:create, :modify]
end

include_recipe "sudo"
include_recipe "openssh"
include_recipe "ssh_keys"
include_recipe "ssh_known_hosts"