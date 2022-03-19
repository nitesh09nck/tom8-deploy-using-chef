execute 'reload the systemd daemon ' do
    command 'sudo systemctl daemon-reload'
    action :run
    not_if { ::File.exist?('/home/ubuntu/starttomat.txt') }
end


execute 'Start the Tomcat service' do
    command 'sudo systemctl start tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/starttomat.txt') }
end


execute 'Tomcat automatically starts at boot' do
    command 'sudo systemctl enable tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/starttomat.txt') }
end


execute 'restart the Tomcat service' do
    command 'sudo systemctl restart tomcat'
    action :run
    only_if { ::File.exist?('/home/ubuntu/starttomat.txt') }
end

file '/home/ubuntu/starttomat.txt' do
    content 'content'
    mode '0755'
    action :create
end




