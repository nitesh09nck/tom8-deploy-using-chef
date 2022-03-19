
if node['platform'] == 'ubuntu'
default['mywebserver']['mywebpackage']= 'apache2'
end



if node['platform'] == 'amazon'
    default['mywebserver']['mywebpackage']= 'httpd'
end


default['mywebserver']['mypack']='git'
force_default['mywebserver']['mypack']='tree'

force_default['chef_client']['interval']    = '120'
force_default['chef_client']['splay']       = '30'