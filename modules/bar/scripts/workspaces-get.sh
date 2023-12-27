#!/bin/bash

workspaces="$(hyprctl workspaces -j | jq '.[] | del(select(.id == -99)) | .id')"

# Remove leading and trailing whitespace
workspaces=$(echo "$workspaces" | sed 's/^[ \t]*//;s/[ \t]*$//')

# Convert newlines to commas
workspaces=$(echo "$workspaces" | tr '\n' ',')

# Remove the trailing comma
workspaces=${workspaces%,}

echo "[$workspaces]"
