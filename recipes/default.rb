#
# Cookbook Name:: test2
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/etc/script.sh" do
  source "script.erb"
  mode '0755'
  owner 'root'
  group 'root'
  variables({
     :hostname =>  node['hostname']
          
  })
end

 execute "run script" do
    command "bash /etc/script.sh"
 end

