#!/bin/bash

# --------------------------------------------
# Process Monitoring Examples
# Basic inspection of running processes
# --------------------------------------------

# Show all running processes
ps aux

# Find processes related to SSH
ps aux | grep ssh

# Show processes for the current user
ps -u "$USER"

# Show top CPU-consuming processes
ps aux --sort=-%cpu | head

# Real-time process monitoring
top
