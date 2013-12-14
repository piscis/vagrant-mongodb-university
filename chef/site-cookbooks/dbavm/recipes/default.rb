include_recipe 'dbavm::base'
include_recipe 'dbavm::ssh'
include_recipe 'dbavm::mail'

include_recipe 'java'

include_recipe 'dbavm::nodejs'
include_recipe 'dbavm::ruby'
inlcude_recipe 'dbavm::mongodb'