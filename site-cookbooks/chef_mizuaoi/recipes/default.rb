#
# Cookbook Name:: chef_mizuaoi
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#template "mizuaoi.conf" do
#  path "/etc/nginx/sites-available/mizuaoi.conf"
#  source "mizuaoi.conf.erb"
#  owner "root"
#  group "root"
#  mode 0644
#  notifies :reload,'service[nginx]'
#end

include_recipe "nginx"

nginx_site "mizuaoi" do
  template "mizuaoi.conf.erb"
  action :enable
end
