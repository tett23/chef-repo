#
# Cookbook Name:: cifs-utils
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


%w{cifs-utils}.each do |pkg|
  package pkg do
    action :install
  end
end
