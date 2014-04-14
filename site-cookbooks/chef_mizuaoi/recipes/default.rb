#
# Cookbook Name:: chef_mizuaoi
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nginx"

nginx_site "mizuaoi" do
  template "mizuaoi.conf.erb"
  action :enable
end

directory "/var/frogbit/movie" do
  owner node[:nginx][:user]
  group node[:nginx][:group]
  mode "0755"
  recursive true
  action :create
end

directory "/home/tett23/movie" do
  owner 'tett23'
  group 'tett23'
  mode "0755"
  recursive true
  action :create
end

mount "/var/frogbit/movie" do
  device '//192.168.1.150/movie'
  fstype 'cifs'
  options 'user,username=tett23,password=awdcft,uid=www-data,gid=www-data,umask=000,rw'
  action [:mount, :enable]
end

mount "/home/tett23/movie" do
  device '//192.168.1.150/movie'
  fstype 'cifs'
  options 'user,username=tett23,password=awdcft,uid=www-data,gid=www-data,umask=000,rw'
  action [:mount, :enable]
end
