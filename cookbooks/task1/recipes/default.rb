#
# Cookbook Name:: task1
# Recipe:: default
#
# Copyright (C) 2016 MSmirnov
#
# All rights reserved - Do Not Redistribute
#

user 'devops' do
  action :create
end

group 'devops' do
  action :modify
  members 'devops'
  append true
end

file '/opt/hello' do
  content 'Hello DevOps!'
  mode '0660'
  owner 'devops'
  group 'devops'
end
