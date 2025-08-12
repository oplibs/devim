#!/bin/bash
# Recursively convert all text files from CRLF to LF using dos2unix

# Check if directory is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Traverse the directory recursively
find "$1" -type f -exec file {} \; | grep "text" | cut -d: -f1 | while read -r file; do
  echo "Converting: $file"
  dos2unix "$file"
done

