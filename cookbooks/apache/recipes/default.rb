#Cookbook: apache
#Recipe: default


package 'httpd'

template '/var/www/html/index.html' do 
  mode '0755'
  owner 'apache'
  group 'apache'
  source 'index.html.erb'
end

service 'httpd' do 
  action [:enable, :start]
  retries 3
end
