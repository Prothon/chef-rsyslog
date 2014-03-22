#
# Cookbook Name:: rsyslog
# Recipe:: default
#
# Copyright 2014, Andrew Raymer

package "#{node['rsyslog']['service']}" do
	action :install
end

service "#{node['rsyslog']['service']}" do
	action [ :start, :enable ]
end

template "/etc/rsyslog.conf" do
	source "rsyslog.conf.erb"
	mode "0644"
	owner "root"
	group "root"
	notifies :restart, "service[rsyslog]", :immediately
end
