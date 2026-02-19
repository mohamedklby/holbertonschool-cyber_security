#!/bin/bash
# 0-sha1.sh
# This script takes a password as an argument, hashes it using SHA-1,
# and writes the resulting hash to 0_hash.txt

# Check if a password is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <password>"
  exit 1
fi

# Hash the password using SHA-1 and save only the hash (first column)
echo -n "$1" | sha1sum | cut -d ' ' -f1 > 0_hash.txt

