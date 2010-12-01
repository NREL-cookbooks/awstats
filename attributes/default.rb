#
# Cookbook Name:: awstats
# Attributes:: awstats
#
# Copyright 2010, NREL
#
# All rights reserved - Do Not Redistribute
#

default[:awstats][:version] = "6.95"
default[:awstats][:url] = "http://voxel.dl.sourceforge.net/project/awstats/AWStats/#{awstats[:version]}/awstats-#{awstats[:version]}.tar.gz"
default[:awstats][:archive_checksum] = "7cda2f470abae83b10c819aec6511897034e75b73b36b706a98736b5d04d81d3"
default[:awstats][:install_path] = "/opt/awstats"
default[:awstats][:data_path] = "/var/lib/awstats"
default[:awstats][:domain] = "example.com"
