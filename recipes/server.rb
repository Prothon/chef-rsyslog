package "#{node['rsyslog']['client']['service']}" do
    action :install
end

service "#{node['rsyslog']['client']['service']}" do
    action [ :start, :enable ]
end

template "/etc/rsyslog.conf" do
    source "rsyslog.conf.server.erb"
    mode "0644"
    owner "root"
    group "root"
    notifies :restart, "service[rsyslog]", :immediately
end
