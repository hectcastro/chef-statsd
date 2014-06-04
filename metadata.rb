maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures StatsD."
version           "1.1.9"
recipe            "statsd", "Installs and configures StatsD"
name              "statsd"

%w{ git nodejs runit }.each do |d|
  depends d
end

%w{ ubuntu rhel scientific redhat centos amazon}.each do |os|
  supports os
end
