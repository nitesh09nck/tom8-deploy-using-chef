
mypack='apache2'



package mypack do
    action :install
end


service mypack do
    action :start
end
