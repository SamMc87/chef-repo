#
# Cookbook:: company_web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
case node['platform']
when 'windows'
  include_recipe 'myiis::default'

  edit_resource(:template, 'c:\inetpub\wwwroot\Default.htm') do
    source 'homepage.erb'
    cookbook 'company_web'
  end
else
  include_recipe 'apache::default'

  edit_resource(:template, '/var/www/html/index.html') do
    source 'homepage.erb'
    cookbook 'company_web'
  end
end
