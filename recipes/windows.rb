#
# Cookbook:: habitat_run
# Recipe:: windows
#
# All rights reserved - Do Not Redistribute
#
template 'C:\\Temp\\habitat-success-run.ps1' do # ~FC033
  source 'windows/habitat-success-run.ps1.erb'
end

powershell_script 'execute_success_run' do
  code '. c:\temp\habitat-success-run.ps1'
end
