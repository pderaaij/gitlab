[![Build Status](https://secure.travis-ci.org/libero18/gitlab.png)](http://travis-ci.org/libero18/gitlab)

Description
===========
install gitlab for CentOS

    using for other cookbooks


Requirements
============
CentOS


Attributes
==========
### [libero18/user](https://github.com/libero18/user) default

    ['user']                               = "UserName"
    libero18/gitlab override               = "gitlab"

    ['group']                              = "GroupName"
    libero18/gitlab override               = "gitlab"

    ['home']                               = "/home/UserName"
    libero18/gitlab override               = "/var/gitlab"

    ['shell']                              = "/bin/bash"
    libero18/gitlab override               = "/bin/zsh"

    ['mode']                               = "0700"
    libero18/gitlab override               = "0755"


### [libero18/zsh](https://github.com/libero18/zsh) default

    ['zsh']['packages']                    = %w{
                                                 zsh
                                           }

    ['zsh']['chsh']                        = "chsh -s /bin/zsh"


### [libero18/rbenv](https://github.com/libero18/rbenv) default

    ['rbenv']['ruby']['version']           = "1.9.3-p194"
    libero18/gitlab override               = "1.9.3-p194"
    ['rbenv']['ruby']['versions']          = %w{
                                                 "#{node['rbenv']['ruby']['version']}" 1.9.2-p290
                                           }
    libero18/gitlab override               = %w{
                                                 "#{node['rbenv']['ruby']['version']}"
                                           }

    ['rbenv']['home']                      = "#{node['home']}/.rbenv"

    ['rbenv']['plugin']                    = "#{node['rbenv']['home']}/plugins"

    ['rbenv']['rubybuild']['home']         = "#{node['rbenv']['plugin']}/ruby-build"

    ['rbenv']['rbenvgemset']['home']       = "#{node['rbenv']['plugin']}/rbenv-gemset"

    ['rbenv']['repo']                      = "git://github.com/sstephenson/rbenv.git"
    ['rbenv']['branch']                    = "master"

    ['rbenv']['rubybuild']['repo']         = "git://github.com/sstephenson/ruby-build.git"
    ['rbenv']['rubybuild']['branch']       = "master"

    ['rbenv']['rbenvgemset']['repo']       = "git://github.com/jamis/rbenv-gemset.git"
    ['rbenv']['rbenvgemset']['branch']     = "master"

    ['gem']['install']['options']          = "--no-rdoc --no-ri"
    ['gem']['install']                     = "gem install #{node['gem']['install']['options']}"

    when ['shell'].scan("zsh")
        ['rbenv']['shellrc']               = "#{node['home']}/.zshrc"
    else
        ['rbenv']['shellrc']               = "#{node['home']}/.bashrc"

    ['rbenv']['runuser']['start']          = "runuser -l #{node[:user]} -s #{node[:shell]} -c \"source #{node['rbenv']['shellrc']}"
    ['rbenv']['runuser']['end']            = "\""

    ['rbenv']['rehash']                    = " && rbenv rehash"
    ['rbenv']['exec']                      = " && rbenv exec"
    ['rbenv']['install']                   = " && rbenv install"
    ['rbenv']['global']                    = " && rbenv global #{node['rbenv']['ruby']['version']}"

    ['rbenv']['gem']['install']            = " && #{node['rbenv']['exec']} #{node['gem']['install']}"
    ['rbenv']['rubygemsupdate']['install'] = " && #{node['rbenv']['gem']['install']} rubygems-update"
    ['rbenv']['rubygemsupdate']['update']  = " && #{node['rbenv']['exec']} update_rubygems"
    ['rbenv']['rbenvrehash']['install']    = " && #{node['rbenv']['gem']['install']} rbenv-rehash"
    ['rbenv']['bundler']['install']        = " && #{node['rbenv']['gem']['install']} bundler"


### libero18/gitlab default

    [:app]                                 = "#{node[:home]}/app"

    ['gitlab']['repo']                     = "git://github.com/gitlabhq/gitlabhq.git"
    ['gitlab']['branch']                   = "master"

    ['gitlab']['packages']                 = %w{
                                                 curl wget libxslt-devel sqlite-devel openssl-devel
                                                 mysql++-devel libicu-devel glibc-devel
                                                 libyaml-devel nginx python python-devel
                                           }


Usage
=====


