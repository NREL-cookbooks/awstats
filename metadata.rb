maintainer       "NREL"
maintainer_email "nick.muerdter@nrel.gov"
license          "All rights reserved"
description      "Installs/Configures awstats"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.3"

depends "apache2"
depends "logrotate"
depends "rsync"
