maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures StatsD."
version           "0.0.6"
recipe            "statsd", "Installs and configures StatsD"

%w{ git logrotate nodejs }.each do |d|
  depends d
end

%w{ ubuntu }.each do |os|
    supports os
end

