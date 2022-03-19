#
# Cookbook:: myfilehandle
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.


file '/home/ubuntu/mytestfile' do
    content 'content'
    mode '0755'
    action :create
end

package 'apache2' do
    action :install
end


cookbook_file '/var/www/html/index.html' do
    source 'mystaticfile'
    mode '0755'
    action :create
end


template '/var/www/html/index.html' do
    source 'mydynofile.erb'
    mode '0755'
    action :create
end

remote_file '/home/ubuntu/jenkins.war' do
    source 'https://get.jenkins.io/war-stable/2.332.1/jenkins.war'
    mode '0755'
    action :create
end


directory '/home/ubuntu/myfolder' do
    mode '0755'
    action :create
end




