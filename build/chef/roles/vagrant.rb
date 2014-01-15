name "vagrant"
description "Vagrant roles"
run_list "recipe[dbavm]"

# env_run_lists "name" => ["recipe[name]"], "environment_name" => ["recipe[name::attribute]"]
# default_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
#override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }