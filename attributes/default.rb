# Cookbook Name:: gitlab
# Attributes:: default


# Set attributes for user
default['user']                               = "gitlab"
default['group']                              = "gitlab"
default['home']                               = "/var/gitlab"
default['mode']                               = "0755"


# Set github repository for gitlab
default['gitlab']['repo']                     = "git://github.com/gitlabhq/gitlabhq.git"
default['gitlab']['branch']                   = "master"


default['gitlab']['packages']                 = %w{
                                                  curl wget libxslt-devel sqlite-devel openssl-devel
                                                  mysql++-devel libicu-devel glibc-devel
                                                  libyaml-devel nginx python python-devel
                                              }


