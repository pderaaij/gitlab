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


# Set attributes for the rbenv
default[:rbenv][:home] = "#{node[:gitlab][:home]}/.rbenv"
default[:rbenv][:plugin] = "#{node[:rbenv][:home]}/plugins"
default[:rbenv][:rubybuild][:home] = "#{node[:rbenv][:plugin]}/ruby-build"
default[:rbenv][:rbenvgemset][:home] = "#{node[:rbenv][:plugin]}/rbenv-gemset"


# Set github repository for rbenv
default[:rbenv][:repo] = "git://github.com/sstephenson/rbenv.git"
default[:rbenv][:branch] = "master"


# Set github repository for ruby-build
default[:rbenv][:rubybuild][:repo] = "git://github.com/sstephenson/ruby-build.git"
default[:rbenv][:rubybuild][:branch] = "master"


# Set github repository for rbenv-gemset
default[:rbenv][:rbenvgemset][:repo] = "git://github.com/jamis/rbenv-gemset.git"
default[:rbenv][:rbenvgemset][:branch] = "master"


# Set attributes for the rbenv install
default[:rbenv][:runuser] = "runuser -l #{node[:gitlab][:user]} -s #{node[:gitlab][:shell]} -c \"source ~/.bashrc"
default[:rbenv][:rehash] = "rbenv rehash\""
default[:rbenv][:install] = "#{node[:rbenv][:runuser]} && rbenv install #{node[:rbenv][:ruby][:version]} && #{node[:rbenv][:rehash]}"
default[:rbenv][:global] = "#{node[:rbenv][:runuser]} && rbenv global #{node[:rbenv][:ruby][:version]}\""
default[:rbenv][:rubygemsupdate][:install] = "#{node[:rbenv][:runuser]} && rbenv exec gem install rubygems-update && #{node[:rbenv][:rehash]}"
default[:rbenv][:rubygemsupdate][:update] = "#{node[:rbenv][:runuser]} && rbenv exec update_rubygems && #{node[:rbenv][:rehash]}"
default[:rbenv][:rbenvrehash][:install] = "#{node[:rbenv][:runuser]} && rbenv exec gem install rbenv-rehash && #{node[:rbenv][:rehash]}"
default[:rbenv][:bundler][:install] = "#{node[:rbenv][:runuser]} && rbenv exec gem install bundler\""


