#!/bin/bash

# --------------------------------------------
# Linux Permission Examples
# This script demonstrates basic permission
# and ownership operations using chmod and chown
# --------------------------------------------

# create test directory
mkdir permission_test
cd permission_test || exit 1

# create sample files
touch public.txt private.txt script.sh

# --------------------------------------------
# Example 1: Restrict file access
# Only the owner can read and write
# --------------------------------------------
chmod 600 private.txt

# --------------------------------------------
# Example 2: Allow read access for everyone
# Owner can write, group and others can read
# --------------------------------------------
chmod 644 public.txt

# --------------------------------------------
# Example 3: Make a script executable
# --------------------------------------------
chmod 755 script.sh

# --------------------------------------------
# Example 4: Change file ownership
# Replace 'user' and 'group' with valid values
# --------------------------------------------
# chown user script.sh
# chown user:group public.txt

# --------------------------------------------
# List files with permissions
# --------------------------------------------
ls -l
