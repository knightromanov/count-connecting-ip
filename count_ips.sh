#!/bin/bash

# Set the log file path
log_file="/var/log/apache2/access.log"

# Parse the log file and count unique IP addresses
ip_count=$(awk '{print $1}' "$log_file" | sort | uniq -c | awk '$1 >= 3' | wc -l)

# Print the IP count
echo "Number of unique IP addresses with 3 or more unsuccessful attempts: $ip_count"
