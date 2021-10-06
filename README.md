habitat_run Cookbook
===================
This cookbook is to be run LAST on the run_list for Chef Habitat policyfile.

Incorporated into this cookbook are scripts for both Linux and Windows platforms
to show a 'successful' Chef Habitat run via the creation/update of an EC2 'tag'
called 'chef-provisioned' and the latest timestamp, formatted in UTC time.

Requirements
------------
The ec2:CreateTags must be part of the base instance profile policy on AWS.

Usage
-----
#### wabtec_habitat::default
