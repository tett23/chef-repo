#
# Cookbook Name:: basic
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{build-essential ohai libxml2-dev zsh-beta}.each do |pkg|
  package pkg do
    action :install
  end
end

git '/home/tett23/dotfiles' do
  action :sync
  repository 'git@github.com:tett23/dotfiles.git'
  reference 'master'
  user 'tett23'
  group 'tett23'
end

execute 'install rvm' do
  command 'curl -sSL https://get.rvm.io | bash'
  not_if {`which rvm`.match(/not found/)}
end

