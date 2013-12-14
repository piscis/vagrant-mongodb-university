inlcude_recipe 'dbavm::base'
inlcude_recipe 'dbavm::ssh'
inlcude_recipe 'dbavm::mail'

include_recipe 'java'

include_recipe 'dbavm::nodejs'
include_recipe 'dbavm::ruby'
inlcude_recipe 'dbavm::mongodb'