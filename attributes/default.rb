#
# Cookbook Name:: awstats
# Attributes:: awstats
#
# Copyright 2010, NREL
#
# All rights reserved - Do Not Redistribute
#

default[:awstats][:version] = "7.2"
default[:awstats][:url] = "http://superb-dca2.dl.sourceforge.net/project/awstats/AWStats/#{awstats[:version]}/awstats-#{awstats[:version]}.tar.gz"
default[:awstats][:archive_checksum] = "740cb46ac5a7befb72ff0b80d0e53c6fe3560700208bce18f4fb5b2b5e275791"
default[:awstats][:install_path] = "/opt/awstats"
default[:awstats][:log_file] = "/var/log/httpd/mylog.log"
default[:awstats][:data_path] = "/var/lib/awstats"
default[:awstats][:dir_icons] = "/icon"
default[:awstats][:domain] = "example.com"
default[:awstats][:dns_lookup] = "2"
default[:awstats][:allow_full_year_view] = "2"

default[:awstats][:robots][:list1] = []
default[:awstats][:robots][:list2] = []

default[:awstats][:mime_types] = []
