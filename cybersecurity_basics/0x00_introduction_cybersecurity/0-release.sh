#!/bin/bash
echo "$(grep -oP '(?<=:\s).*' <(lsb_release -i))"
