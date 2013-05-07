# statsd [![Build Status](https://secure.travis-ci.org/hectcastro/chef-statsd.png?branch=master)](http://travis-ci.org/hectcastro/chef-statsd)

## Description

Installs and configures StatsD.

## Requirements

### Platforms

* Ubuntu 11.10 (Oneiric)
* Ubuntu 12.04 (Precise)
* CentOS 6.3 (Final)

### Cookbooks

* git
* logrotate
* nodejs

## Attributes

* `node["statsd"]["dir"]` - Directory to install into.
* `node["statsd"]["conf_dir"]` - Directory for StatsD configuration.
* `node["statsd"]["repository"]` - Reference to a StatsD repository.
* `node["statsd"]["log_file"]` - Path to the StatsD log file.
* `node["statsd"]["flush_interval"]` - Flush interval in milliseconds.
* `node["statsd"]["address"]` - Address to bind StatsD to.
* `node["statsd"]["port"]` - Port to run StatsD on.
* `node["statsd"]["graphite_host"]` - Graphite host.
* `node["statsd"]["graphite_port"]` - Graphite port.
* `node["statsd"]["graphite"]["legacy_namespace"]` - Flag to use legacy
  namespace (default: `true`).
* `node["statsd"]["graphite"]["global_prefix"]` - Global prefix to use for
  sending stats to Graphite (default: `stats`).
* `node["statsd"]["graphite"]["prefix_counter"]` - Graphite prefix for counter
  metrics (default: `counters`).
* `node["statsd"]["graphite"]["prefix_timer"]` - Graphite prefix for timer
  metrics (default: `timers`).
* `node["statsd"]["graphite"]["prefix_gauge"]` - Graphite prefix for gauge
  metrics (default: `gauges`).
* `node["statsd"]["graphite"]["prefix_set"]` - Graphite prefix for set
  metrics (default: `sets`).

## Recipes

* `recipe[statsd]` will install StatsD.

## Usage

Currently only supports installation via a Git repository.
