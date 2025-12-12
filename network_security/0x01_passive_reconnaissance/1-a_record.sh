#!/bin/bash
nslookup -type=A $1 | awk '/^Name:/{print; getline; if($0 ~ /^Address:/) print}'
