name 'load_balancer'
description 'Load Balancer'
run_list 'role[base]','recipe[myhaproxy]'
