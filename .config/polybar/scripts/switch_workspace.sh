#!/bin/bash

# Script to switch workspaces in AwesomeWM
workspace_number=$1

# Send the command to AwesomeWM
echo "awful.tag.viewonly(awful.screen.focused().tags[${workspace_number}])" | awesome-client

