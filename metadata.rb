maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures StatsD."
version           "1.1.12"
recipe            "statsd", "Installs and configures StatsD"
name              "statsd"

%w{ git nodejs runit }.each do |d|
  depends d
end

%w{ debian ubuntu rhel scientific redhat centos amazon}.each do |os|
  supports os
end
