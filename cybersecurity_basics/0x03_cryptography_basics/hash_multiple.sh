#!/bin/bash
# hash_multiple.sh
if [ -z "$1" ]; then
  echo "Usage: $0 <password_file>"
  exit 1
fi
while read pwd; do
  echo -n "$pwd" | sha1sum | cut -d ' ' -f1
done < "$1" > all_hashes.txt
echo "Hashes saved in all_hashes.txt"
