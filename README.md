# Description #

Installs and configures StatsD.

# Requirements #

## Platforms ##

* Ubuntu 11.10 (Oneiric)

## Cookbooks ##

* git
* nodejs

# Attributes #

* `node["statsd"]["dir"]` - Directory to install into.
* `node["statsd"]["conf_dir"]` - Directory for StatsD configuration.
* `node["statsd"]["repository"]` - Reference to a StatsD repository.
* `node["statsd"]["log_file"]` - Path to the StatsD log file.
* `node["statsd"]["flush_interval"]` - Flush interval in milliseconds.
* `node["statsd"]["port"]` - Port to run StatsD on.
* `node["statsd"]["graphite_host"]` - Graphite host.
* `node["statsd"]["graphite_port"]` - Graphite port.

# Recipes #

* `recipe[statsd]` will install StatsD.

# Usage #

Currently only supports installation via a Git repository.
