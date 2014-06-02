default["statsd"]["dir"]                          = "/usr/share/statsd"
default["statsd"]["conf_dir"]                     = "/etc/statsd"
default["statsd"]["repository"]                   = "https://github.com/etsy/statsd.git"
default["statsd"]["reference"]                    = "master"
default["statsd"]["flush_interval"]               = 10000
default["statsd"]["percent_threshold"]            = 90
default["statsd"]["address"]                      = "0.0.0.0"
default["statsd"]["port"]                         = 8125
default["statsd"]["graphite_host"]                = "127.0.0.1"
default["statsd"]["graphite_port"]                = 2003
default["statsd"]["graphite_role"]                = "graphite_server"
default["statsd"]["graphite_query"]               = "roles:#{node['statsd']['graphite_role']} AND chef_environment:#{node.chef_environment}"
default["statsd"]["delete_idle_stats"]            = false
default["statsd"]["delete_timers"]                = false
default["statsd"]["delete_gauges"]                = false
default["statsd"]["delete_sets"]                  = false
default["statsd"]["delete_counters"]              = false
default["statsd"]["username"]                     = "statsd"
default["statsd"]["dump_messages"]                = false

# Graphite storage config
default["statsd"]["graphite"]["legacy_namespace"] = true
default["statsd"]["graphite"]["global_prefix"]    = "stats"
default["statsd"]["graphite"]["global_suffix"]    = ""
default["statsd"]["graphite"]["prefix_counter"]   = "counters"
default["statsd"]["graphite"]["prefix_timer"]     = "timers"
default["statsd"]["graphite"]["prefix_gauge"]     = "gauges"
default["statsd"]["graphite"]["prefix_set"]       = "sets"

# nodejs
default["statsd"]["nodejs_bin"] = "#{node["nodejs"]["dir"]}/bin/node"
