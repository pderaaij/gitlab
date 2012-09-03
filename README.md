[![Build Status](https://secure.travis-ci.org/libero18/gitlab.png)](http://travis-ci.org/libero18/gitlab)

Description
===========
install gitlab for CentOS


Requirements
============
CentOS , 
[libero18/user cookbook](https://github.com/libero18/user) , 
[libero18/rbenv cookbook](https://github.com/libero18/rbenv) , 
[libero18/gitlab.json chef roles](https://github.com/libero18/.chef/blob/master/roles/gitlab.json)


Attributes
==========
### [libero18/.chef](https://github.com/libero18/.chef) roles
    [roles/gitlab.json](https://github.com/libero18/.chef/blob/master/roles/gitlab.json)


### [libero18/user](https://github.com/libero18/user) default
    [attributes/default.rb](https://github.com/libero18/user/blob/master/attributes/default.rb)


### [libero18/rbenv](https://github.com/libero18/rbenv) default
    [attributes/default.rb](https://github.com/libero18/rbenv/blob/master/attributes/default.rb)


### libero18/gitlab default

    ['user']                               = "gitlab"
    ['group']                              = "gitlab"
    ['home']                               = "/var/gitlab"
    ['mode']                               = "0755"


    ['gitlab']['repo']                     = "git://github.com/gitlabhq/gitlabhq.git"
    ['gitlab']['branch']                   = "master"

    ['gitlab']['packages']                 = %w{
                                                 curl wget libxslt-devel sqlite-devel openssl-devel
                                                 mysql++-devel libicu-devel glibc-devel
                                                 libyaml-devel nginx python python-devel
                                           }


Usage
=====


