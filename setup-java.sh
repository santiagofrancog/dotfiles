curl -s "https://get.sdkman.io" | bash

# Reload bash
source ~/.bashrc

sdk list java | grep '\-amzn' | awk -F'|' '{print $6}' | sed 's/^[ \t]*//;s/[ \t]*$//' | grep -E '^(11|17|21)\.' | while read -r version; do
    echo "Processing version: $version"
    sdk install java "$version"
done

apt install maven

# Reload bash
source ~/.bashrc
