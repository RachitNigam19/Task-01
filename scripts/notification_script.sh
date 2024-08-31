#!/bin/bash

# Example notification script
recipient="rachitn46@gmail.com"
subject="Security Alert: Threat Detected"
body="A threat has been detected in your repository. Please check the logs for more details."

echo "$body" | mail -s "$subject" "$recipient"
