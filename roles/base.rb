name 'base'
description 'Base Role'
run_list 'recipe[mychef-client]'
default_attributes 'chef-client' => {'interval' => 300}
