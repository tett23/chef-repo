#
# Cookbook Name:: basic
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{libxml2-dev}.each do |pkg|
  package pkg do
    action :install
  end
end
