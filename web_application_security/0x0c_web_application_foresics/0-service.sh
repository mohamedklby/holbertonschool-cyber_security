#!/bin/bash

logfile="/var/log/auth.log"

grep -oP 'pam_unix\(\K[^:]+' "$logfile" | sort | uniq -c | sort -nr
