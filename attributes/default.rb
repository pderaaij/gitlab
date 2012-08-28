# Cookbook Name:: gitlab
# Attributes:: default

# Set ruby version
default[:rbenv][:ruby][:version] = "1.9.3-p194"


# Set attributes for the git user
default[:gitlab][:user] = "gitlab"
default[:gitlab][:group] = "gitlab"
default[:gitlab][:home] = "/var/gitlab"
default[:gitlab][:app] = "#{node[:gitlab][:home]}/app"
default[:gitlab][:shell] = "/bin/bash"

# Set github repository for gitlab
default[:gitlab][:repo] = "git://github.com/gitlabhq/gitlabhq.git"
default[:gitlab][:branch] = "master"

default[:gitlab][:packages] = %w{
    curl wget libxslt-devel sqlite-devel openssl-devel
    mysql++-devel libicu-devel glibc-devel
    libyaml-devel nginx python python-devel
}

# Set github repository for rbenv
default[:rbenv][:repo] = "git://github.com/sstephenson/rbenv.git"
default[:rbenv][:branch] = "master"

# Set github repository for ruby-build
default[:rubybuild][:repo] = "git://github.com/sstephenson/ruby-build.git"
default[:rubybuild][:branch] = "master"

# Set github repository for rbenv-gemset
default[:rbenvgemset][:repo] = "git://github.com/jamis/rbenv-gemset.git"
default[:rbenvgemset][:branch] = "master"

# Set attributes for the rbenv
default[:rbenv][:home] = "#{node[:gitlab][:home]}/.rbenv"
default[:rbenv][:plugin] = "#{node[:rbenv][:home]}/plugins"
default[:rubybuild][:home] = "#{node[:rbenv][:plugin]}/ruby-build"
default[:rbenvgemset][:home] = "#{node[:rbenv][:plugin]}/rbenv-gemset"



