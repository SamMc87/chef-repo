name 'web_server'
description 'IIS and Apache Web Servers'
run_list 'role[base]','recipe[company_web]'
default_attributes 'company_web' => {'company_name' => 'E Corp'}
