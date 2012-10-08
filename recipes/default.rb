#
# Cookbook Name:: awstats
# Recipe:: default
#
# Copyright 2010, NREL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "logrotate"
include_recipe "rsync"

remote_file "#{Chef::Config[:file_cache_path]}/awstats-#{node[:awstats][:version]}.tar.gz" do
  source node[:awstats][:url]
  checksum node[:awstats][:archive_checksum]
  not_if { ::File.exists?("#{Chef::Config[:file_cache_path]}/awstats-#{node[:awstats][:version]}.tar.gz") }
end

bash "Install AWStats" do
  cwd Chef::Config[:file_cache_path]
  user "root"
  group "root"

  code <<-EOS
  rm -rf #{Chef::Config[:file_cache_path]}/awstats-#{node[:awstats][:version]}
  tar -xvf awstats-#{node[:awstats][:version]}.tar.gz
  rsync -a --delete-delay awstats-#{node[:awstats][:version]}/ #{node[:awstats][:install_path]}
  rm -rf #{Chef::Config[:file_cache_path]}/awstats-#{node[:awstats][:version]}
  EOS

  not_if do
    ::File.exists?(node[:awstats][:install_path]) && system("grep '^Version: #{node[:awstats][:version]}$' #{node[:awstats][:install_path]}/README.TXT > /dev/null")
  end
end

directory node[:awstats][:data_path] do
  mode "0755"
  owner "root"
  group "root"
  recursive true
end

template "/etc/awstats.conf" do
  source "awstats.conf.erb"
  mode "0644"
  owner "root"
  group "root"
end

# Install the cronjob that runs awstats every day.
template "/etc/cron.d/awstats" do
  source "cron.erb"
  mode "0644"
  owner "root"
  group "root"
end

# Rotate the log files cron outputs.
logrotate_app "awstats" do
  path ["/var/log/awstats.log"]
  rotate 7
end
