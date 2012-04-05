maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures StatsD."
version           "0.0.1"
recipe            "statsd", "Installs and configures StatsD"

depends "git"
depends "nodejs"

%w{ ubuntu }.each do |os|
    supports os
end

