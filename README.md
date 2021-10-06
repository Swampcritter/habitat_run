## Cookbook Name
habitat_run

## Inspiration
When Chef Habitat runs, there is no notice that it has run to completion on a Linux or Windows server without first having to login to it and see. This cookbook runs at the end of the Chef Habitat run_list, thus would create a unique EC2 tag in AWS along with a timestamp to show when it completed its run. If you don't see the tag, then something has gone awry on the server instance and needs to be investigated.

## What it does
Incorporated into this cookbook are scripts for both Linux and Windows platforms to show a 'successful' Chef Habitat run via the creation/update of an EC2 'tag' called 'chef-provisioned' and the latest timestamp, formatted in UTC time.

## How we built it
The cookbook deploys a template/script, depending on which environment it is running on. The cookbook supports both Linux and Windows platforms.

## Challenges we ran into
AWS Client needs to be installed on the Linux and Windows instances beforehand. Also found that the ec2:CreateTags must be part of the base instance profile policy on AWS.

## Accomplishments that we're proud of
Cookbook works just like its intended and helps out application teams so they can add in ruby_blocks to their code to make sure that Chef Habitat has been fully run and is stable in the background before attempting their application cookbook deployments.

## What's next for habitat_run
Not much else as it has been vetted by multiple application teams to date

## Usage
habitat_run::default

