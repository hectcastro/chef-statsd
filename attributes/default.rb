default["statsd"]["dir"]                          = "/usr/share/statsd"
default["statsd"]["conf_dir"]                     = "/etc/statsd"
default["statsd"]["repository"]                   = "git://github.com/etsy/statsd.git"
default["statsd"]["log_file"]                     = "/var/log/statsd.log"
default["statsd"]["flush_interval"]               = 10000
default["statsd"]["address"]                      = "0.0.0.0"
default["statsd"]["port"]                         = 8125
default["statsd"]["graphite_host"]                = "localhost"
default["statsd"]["graphite_port"]                = 2003

# Graphite storage config
default["statsd"]["graphite"]["legacy_namespace"] = true
default["statsd"]["graphite"]["global_prefix"]    = "stats"
default["statsd"]["graphite"]["prefix_counter"]   = "counters"
default["statsd"]["graphite"]["prefix_timer"]     = "timers"
default["statsd"]["graphite"]["prefix_gauge"]     = "gauges"
default["statsd"]["graphite"]["prefix_set"]       = "sets"
