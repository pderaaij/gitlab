#
# Cookbook Name:: gitlab
# Recipe:: default
#
# Copyright 2012, Example Com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

group node[:gitlab][:group] do
    action :create
end

user node[:gitlab][:user] do
    group node[:gitlab][:group]
    home node[:gitlab][:home]
    shell node[:gitlab][:shell]
    action :create
end

directory node[:gitlab][:home] do
    owner node[:gitlab][:user]
    group node[:gitlab][:group]
    mode 0755
end

template "#{node[:gitlab][:home]}/.bashrc" do
    owner node[:gitlab][:user]
    group node[:gitlab][:group]
    mode 0644
end

git node[:rbenv][:home] do
    repository node[:rbenv][:repo]
    reference node[:rbenv][:branch]
    action :checkout
    user node[:gitlab][:user]
    group node[:gitlab][:group]
end

directory node[:rbenv][:plugin] do
    owner node[:gitlab][:user]
    group node[:gitlab][:group]
end

git node[:rubybuild][:home] do
    repository node[:rubybuild][:repo]
    reference node[:rubybuild][:branch]
    action :checkout
    user node[:gitlab][:user]
    group node[:gitlab][:group]
end

git node[:rbenvgemset][:home] do
    repository node[:rbenvgemset][:repo]
    reference node[:rbenvgemset][:branch]
    action :checkout
    user node[:gitlab][:user]
    group node[:gitlab][:group]
end


