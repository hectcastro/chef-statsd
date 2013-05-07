maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures StatsD."
version           "0.1.1"
recipe            "statsd", "Installs and configures StatsD"
name              "statsd"

%w{ git logrotate nodejs }.each do |d|
  depends d
end

%w{ ubuntu rhel scientific redhat centos amazon}.each do |os|
  supports os
end

