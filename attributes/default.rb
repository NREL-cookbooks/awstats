#
# Cookbook Name:: awstats
# Attributes:: awstats
#
# Copyright 2010, NREL
#
# All rights reserved - Do Not Redistribute
#

default[:awstats][:version] = "7.3"
default[:awstats][:url] = "http://iweb.dl.sourceforge.net/project/awstats/AWStats/#{awstats[:version]}/awstats-#{awstats[:version]}.tar.gz"
default[:awstats][:archive_checksum] = "642da01c4482c99f68076c02b9a6e0c6de803303597be4ee4d0c8fce69bd1ad4"
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
