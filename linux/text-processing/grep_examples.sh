#!/bin/bash

# --------------------------------------------
# grep Examples for Text Processing
# This script demonstrates common grep usage
# for inspecting and filtering log files
# --------------------------------------------

# example log file
LOG_FILE="sample_logs/auth.log"

# --------------------------------------------
# Example 1: Search for failed login attempts
# --------------------------------------------
grep "failed" "$LOG_FILE"

# --------------------------------------------
# Example 2: Case-insensitive search
# Useful when log formats are inconsistent
# --------------------------------------------
grep -i "error" "$LOG_FILE"

# --------------------------------------------
# Example 3: Show line numbers with matches
# Helps locate events in large files
# --------------------------------------------
grep -n "denied" "$LOG_FILE"

# --------------------------------------------
# Example 4: Count matching lines
# Useful for spotting repeated events
# --------------------------------------------
grep -c "failed" "$LOG_FILE"

# --------------------------------------------
# Example 5: Exclude noisy entries
# --------------------------------------------
grep -v "accepted" "$LOG_FILE"
