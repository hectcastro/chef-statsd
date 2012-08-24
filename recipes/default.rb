include_recipe "git"
include_recipe "nodejs"
include_recipe "logrotate"

git node["statsd"]["dir"] do
  repository node["statsd"]["repository"]
  action :sync
  notifies :restart, "service[statsd]"
end

directory node["statsd"]["conf_dir"] do
  action :create
end

template "#{node["statsd"]["conf_dir"]}/config.js" do
  mode "0644"
  source "config.js.erb"
  variables(
    :address        => node["statsd"]["address"],
    :port           => node["statsd"]["port"],
    :flush_interval => node["statsd"]["flush_interval"],
    :graphite_port  => node["statsd"]["graphite_port"],
    :graphite_host  => node["statsd"]["graphite_host"]
  )
  notifies :restart, "service[statsd]"
end

template "/etc/init/statsd.conf" do
  mode "0644"
  source "statsd.conf.erb"
  variables(
    :log_file         => node["statsd"]["log_file"],
    :platform_version => node["platform_version"].to_f
  )
end

user "statsd" do
  system true
  shell "/bin/false"
end

file node["statsd"]["log_file"] do
  owner "statsd"
  action :create
end

logrotate_app "statsd" do
  cookbook "logrotate"
  path node["statsd"]["log_file"]
  frequency "daily"
  rotate 7
  create "644 root root"
end

service "statsd" do
  provider Chef::Provider::Service::Upstart
  action [ :enable, :start ]
end
