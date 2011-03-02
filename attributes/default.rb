#
# Cookbook Name:: awstats
# Attributes:: awstats
#
# Copyright 2010, NREL
#
# All rights reserved - Do Not Redistribute
#

default[:awstats][:version] = "7.0"
default[:awstats][:url] = "http://voxel.dl.sourceforge.net/project/awstats/AWStats/#{awstats[:version]}/awstats-#{awstats[:version]}.tar.gz"
default[:awstats][:archive_checksum] = "e2651d4a5ff40e1d792b37cc13784d444cae479b4f98118aed27f46f5a18ce92"
default[:awstats][:install_path] = "/opt/awstats"
default[:awstats][:log_file] = "/var/log/httpd/mylog.log"
default[:awstats][:data_path] = "/var/lib/awstats"
default[:awstats][:domain] = "example.com"
default[:awstats][:dns_lookup] = "2"
