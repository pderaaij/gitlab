# Cookbook Name:: gitlab
# Attributes:: default


# Set current rbenv ruby version
override['rbenv']['ruby']['version']         = "1.9.3-p194"


# Set install rbenv ruby versions
override['rbenv']['ruby']['versions']        = %w{
                                                "#{node['rbenv']['ruby']['version']}"
                                             }


# Set attributes for the gitlab user
override['user']                             = "gitlab"
override['group']                            = "gitlab"
override['home']                             = "/var/gitlab"
override['mode']                             = "0755"
override['shell']                            = "/bin/zsh"
default[:app]                                = "#{node[:home]}/app"


# Set github repository for gitlab
default['gitlab']['repo']                    = "git://github.com/gitlabhq/gitlabhq.git"
default['gitlab']['branch']                  = "master"


default['gitlab']['packages']                = %w{
                                                 curl wget libxslt-devel sqlite-devel openssl-devel
                                                 mysql++-devel libicu-devel glibc-devel
                                                 libyaml-devel nginx python python-devel
                                             }


