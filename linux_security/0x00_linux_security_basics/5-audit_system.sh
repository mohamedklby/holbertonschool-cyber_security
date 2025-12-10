#!/bin/bash
bash -c $'last -F | head -n -5\nss -tanp 2>/dev/null\niptables -L -v 2>/dev/null\nif ss -lntup 2>/dev/null\nthen\n  netstat -tulpen\nfi'
