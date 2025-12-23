#!/bin/bash
curl -s "https://get.sdkman.io" | bash

# Reload bash
source ~/.bashrc

sdk list java | grep '\-amzn' | awk -F'|' '{print $6}' | sed 's/^[ \t]*//;s/[ \t]*$//' | grep -E '^(17|21)\.' | while read -r version; do
    echo "Processing version: $version"
    sdk install java "$version"
done

sdk install maven $(sdk list maven | grep -v '\-rc' | grep -oE '\b[0-9]+\.[0-9]+\.[0-9]+\b' | sort -V | tail -n1)

# Reload bash
source ~/.bashrc
