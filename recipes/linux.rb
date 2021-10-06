#
# Cookbook:: habitat_run
# Recipe:: linux
#
# All rights reserved - Do Not Redistribute
#
directory '/opt/chef-misc/tmp' do
  owner 'root'
  group 'root'
  mode '1777'
end

template '/opt/chef-misc/tmp/habitat-success-run.sh' do
  source 'linux/habitat-success-run.sh.erb'
  mode '0755'
end

yum_package 'jq' do
  action :install
end

bash 'execute_success_run' do
  cwd '/opt/chef-misc/tmp'
  code '/opt/chef-misc/tmp/habitat-success-run.sh'
end
