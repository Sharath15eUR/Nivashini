#!/bin/bash

input_file="$1"
output_file="output.txt"

> "$output_file"

while read -r line; do
    # Extract key name (before the colon)
    key=$(echo "$line" | awk -F ":" '{print $1}')

    # Check if the key matches the required parameters
    if [[ $key == '"frame.time"' || $key == '"wlan.fc.type"' || $key == '"wlan.fc.subtype"' ]]; then
        echo "$line" >> "$output_file"
    fi
done < "$input_file"

echo "Filtered output saved to $output_file"
cat "$output_file"
