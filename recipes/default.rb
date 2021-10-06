#
# Cookbook:: habitat_run
# Recipe:: default
#
# All rights reserved - Do Not Redistribute
#

if platform_family?('windows')
  include_recipe 'habitat_run::windows'
else
  include_recipe 'habitat_run::linux'
end
