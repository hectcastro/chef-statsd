# statsd [![Build Status](https://secure.travis-ci.org/hectcastro/chef-statsd.png?branch=master)](http://travis-ci.org/hectcastro/chef-statsd)

## Description

Installs and configures StatsD.

## Requirements

### Platforms

* Ubuntu 11.10 (Oneiric)
* Ubuntu 12.04 (Precise)
* CentOS 6.3
* CentOS 6.4

### Cookbooks

* git
* logrotate
* nodejs

## Attributes

* `node["statsd"]["dir"]` - Directory to install into.
* `node["statsd"]["conf_dir"]` - Directory for StatsD configuration.
* `node["statsd"]["repository"]` - Reference to a StatsD repository.
* `node["statsd"]["reference"]` - Revision of repository to checkout.
* `node["statsd"]["log_file"]` - Path to the StatsD log file.
* `node["statsd"]["flush_interval"]` - Flush interval in milliseconds.
* `node["statsd"]["percent_threshold"]` - Nth percentile value(s). Single value or array.
* `node["statsd"]["address"]` - Address to bind StatsD to.
* `node["statsd"]["port"]` - Port to run StatsD on.
* `node["statsd"]["graphite_host"]` - Graphite host.
* `node["statsd"]["graphite_port"]` - Graphite port.
* `node["statsd"]["graphite_role"]` - Graphite role for automatic discovery.
* `node["statsd"]["graphite_query"]` - Graphite query for automatic discovery.
* `node["statsd"]["delete_idle_stats"]` - Don't send values to graphite for
  inactive stats (default: `false`).
* `node["statsd"]["delete_timers"]` - Don't send values to graphite for
  inactive timers (default: `false`).
* `node["statsd"]["delete_gauges"]` - Don't send values to graphite for
  inactive gauges (default: `false`).
* `node["statsd"]["delete_sets"]` - Don't send values to graphite for
  inactive sets (default: `false`).
* `node["statsd"]["delete_counters"]` - Don't send values to graphite for
  inactive counters (default: `false`).
* `node["statsd"]["username"]` - Will be used for process supervision
  (default: `stasd`).
* `node["statsd"]["dump_messages"]` - Print debugging information on incoming
  messages (default: `false`).
* `node["statsd"]["graphite"]["legacy_namespace"]` - Flag to use legacy
  namespace (default: `true`).
* `node["statsd"]["graphite"]["global_prefix"]` - Global prefix to use for
  sending stats to Graphite (default: `stats`).
* `node["statsd"]["graphite"]["global_suffix"]` - Global suffix to use for
  sending stats to Graphite (default: ``).
* `node["statsd"]["graphite"]["prefix_counter"]` - Graphite prefix for counter
  metrics (default: `counters`).
* `node["statsd"]["graphite"]["prefix_timer"]` - Graphite prefix for timer
  metrics (default: `timers`).
* `node["statsd"]["graphite"]["prefix_gauge"]` - Graphite prefix for gauge
  metrics (default: `gauges`).
* `node["statsd"]["graphite"]["prefix_set"]` - Graphite prefix for set
  metrics (default: `sets`).
* `node["statsd"]["nodejs_bin"]` - Specify a direct path to the Node.js binary
  (default: `#{node["nodejs"]["dir"]}/bin/node`).

## Recipes

* `recipe[statsd]` will install StatsD.

## Usage

Currently only supports installation via a Git repository.
