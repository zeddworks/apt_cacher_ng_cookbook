#
# Cookbook Name:: apt-cacher-ng
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "apt-cacher-ng"

service "apt-cacher-ng" do
  supports :restart => true, :status => false
  action [ :enable, :start ]
end
