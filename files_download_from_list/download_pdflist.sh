#!/bin/bash

# Get the input file location from the first argument
input_file="$1"
download_dir="downloads"
mkdir -p "$download_dir"
# Loop through each line in the input file
while IFS= read -r url; do
  # Extract the filename from the URL
  filename=$(basename "$url")
  # Download the file using curl and specify the output filename
  curl -o "$download_dir/$filename" "$url"
done < "$input_file"
echo "PDF files downloaded to $download_dir/"
