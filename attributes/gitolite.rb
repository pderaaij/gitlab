# Cookbook Name:: gitlab
# Attributes:: gitolite

default['gitlab']['gitolite_repo'] = "git://github.com/sitaramc/gitolite.git"
default['gitlab']['gitolite_user'] = "gitlab"
default['gitlab']['gitolite_group'] = "gitlab"

# Set git repos directory
default['gitlab']['repos_dir'] = "/var/repos"

# Set gitolite directory
default['gitlab']['gitolite_dir'] = "#{node['gitlab']['repos_dir']}/gitolite"

# Set gitolite umask
default['gitlab']['gitolite_umask'] = "0007"
