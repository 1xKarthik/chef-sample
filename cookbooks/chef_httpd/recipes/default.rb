#
# Cookbook:: chef_httpd
# Recipe:: default
#
package 'httpd'

service 'httpd' do
  action [:enable]
  start_command "/etc/init.d/httpd -k start"
end

group 'web_admin'

user 'web_admin' do
    group 'web_admin'
    system true
    shell '/bin/bash'
end

template 'var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end
