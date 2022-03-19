cookbook_file '/etc/systemd/system/tomcat.service' do
    source 'mytomservicefile'
    mode '0755'
    action :create
end
