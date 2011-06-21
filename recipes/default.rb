#
# Cookbook Name:: apt-cacher-ng
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "apt-cacher-ng"

if node[:apt][:proxy_url] != ""
  template "/etc/apt/apt.conf.d/01proxy" do
    source "01proxy.erb"
    owner "root"
    group "root"
    mode 0644
  end
end
