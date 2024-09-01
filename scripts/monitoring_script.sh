#!/bin/bash

# Detect changes or run security checks
if [ -n "$(git diff --name-only HEAD~1 HEAD)" ]; then
    # If there are changes, consider this a potential issue
    echo "Threat detected"
    echo "::set-output name=threat_detected::true"
    exit 0
else
    echo "No threat detected"
    exit 1
fi
