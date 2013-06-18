default["statsd"]["dir"]                          = "/usr/share/statsd"
default["statsd"]["conf_dir"]                     = "/etc/statsd"
default["statsd"]["repository"]                   = "git://github.com/etsy/statsd.git"
default["statsd"]["log_file"]                     = "/var/log/statsd.log"
default["statsd"]["flush_interval"]               = 10000
default["statsd"]["address"]                      = "0.0.0.0"
default["statsd"]["port"]                         = 8125
default["statsd"]["graphite_host"]                = "127.0.0.1"
default["statsd"]["graphite_port"]                = 2003
default['statsd']['graphite_role']                = 'graphite_server'
default['statsd']['graphite_query']               = "roles:#{node['statsd']['graphite_role']} AND chef_environment:#{node.chef_environment}"
default["statsd"]["delete_timers"]                = false
default["statsd"]["delete_gauges"]                = false

# Graphite storage config
default["statsd"]["graphite"]["legacy_namespace"] = true
default["statsd"]["graphite"]["global_prefix"]    = "stats"
default["statsd"]["graphite"]["prefix_counter"]   = "counters"
default["statsd"]["graphite"]["prefix_timer"]     = "timers"
default["statsd"]["graphite"]["prefix_gauge"]     = "gauges"
default["statsd"]["graphite"]["prefix_set"]       = "sets"
