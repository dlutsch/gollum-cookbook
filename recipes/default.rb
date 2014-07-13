#
# Cookbook Name:: gollum
# Recipe:: default
#
# cookbook to install and configure gollum wiki 
# 
# 
#
include_recipe "gollum::trusty_depend"

gem_package "gollum" do
  action :install
end

package "git" do
  action :install
end

ary = node['wiki']['format'].to_a

ary.each do |gem|
 gem_package "#{gem}" do
  action :install
 end
end

execute "create wiki directory" do
  command "mkdir #{node['wiki']['dir']}"
 end






