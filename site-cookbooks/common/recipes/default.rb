#
# Cookbook Name:: common
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'users'

users_manage 'tett23' do
  group_id 1100
  action [:remove, :create]
end
