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

graphite_host = node['statsd']['graphite_host']

unless Chef::Config[:solo]
  graphite_results = search(:node, node['statsd']['graphite_query'])

  unless graphite_results.empty?
    graphite_host = graphite_results[0]['ipaddress']
  end
end

template "#{node["statsd"]["conf_dir"]}/config.js" do
  mode "0644"
  source "config.js.erb"
  variables(
    :address          => node["statsd"]["address"],
    :port             => node["statsd"]["port"],
    :flush_interval   => node["statsd"]["flush_interval"],
    :graphite_port    => node["statsd"]["graphite_port"],
    :graphite_host    => graphite_host,
    :delete_gauges    => node["statsd"]["delete_gauges"],
    :delete_timers    => node["statsd"]["delete_timers"],
    :legacy_namespace => node["statsd"]["graphite"]["legacy_namespace"],
    :global_prefix    => node["statsd"]["graphite"]["global_prefix"],
    :prefix_counter   => node["statsd"]["graphite"]["prefix_counter"],
    :prefix_timer     => node["statsd"]["graphite"]["prefix_timer"],
    :prefix_gauge     => node["statsd"]["graphite"]["prefix_gauge"],
    :prefix_set       => node["statsd"]["graphite"]["prefix_set"]
  )
  notifies :restart, "service[statsd]"
end


case node["platform_family"]
when "debian"
  template "/etc/init/statsd.conf" do
    mode "0644"
    source "statsd.conf.erb"
    variables(
      :log_file         => node["statsd"]["log_file"],
      :platform_version => node["platform_version"].to_f
    )
  end
when "rhel","fedora"
  template "/etc/init.d/statsd" do
    mode "0755"
    source "statsd.erb"
    variables(
      :log_file         => node["statsd"]["log_file"],
      :node_dir         => node["statsd"]["dir"]
    )
  end
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
  case node["platform"]
  when "ubuntu"
    if node["platform_version"].to_f >= 9.10
      provider Chef::Provider::Service::Upstart
    end
    #restart_command "sudo service statsd stop && sudo service statsd start"
  end
  action [ :enable, :start ]
  supports :start => true, :stop => true, :restart => true, :status => true
end
