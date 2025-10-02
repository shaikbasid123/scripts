#!/bin/bash

# List of services to check

services=("docker" "nginx" "sshd")

# Log file
LOGFILE="/var/log/service_check.log"

for svc in "${services[@]}"; do
    if systemctl is-active --quiet "$svc"; then
        echo "$(date): $svc is running"
    else
        echo "$(date): ERROR - $svc is NOT running!" | tee -a "$LOGFILE"
    fi
done

