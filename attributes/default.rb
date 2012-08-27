# Cookbook Name:: gitlab
# Attributes:: default

# Set ruby version
default['gitlab']['ruby_ver'] = "1.9.3-p194"


# Set attributes for the git user
default['gitlab']['user'] = "gitlab"
default['gitlab']['group'] = "gitlab"
default['gitlab']['home_dir'] = "/var/gitlab"
default['gitlab']['app_dir'] = "#{node['gitlab']['home_dir']}/app"

# Set github URL for gitlab
default['gitlab']['gitlab_repo'] = "git://github.com/gitlabhq/gitlabhq.git"
default['gitlab']['gitlab_branch'] = "master"

default['gitlab']['packages'] = %w{
    curl wget libxslt-devel sqlite-devel openssl-devel
    mysql++-devel libicu-devel glibc-devel
    libyaml-devel nginx python python-devel
}
