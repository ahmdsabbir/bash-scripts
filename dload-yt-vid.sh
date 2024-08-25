#!/bin/bash

# youtube-dl must be installed first

url_file="urls.csv"

# Check if the file exists
if [[ ! -f $url_file ]]
then
    echo "The URL file $url_file does not exist."
    exit 1
fi

download_dir="downloaded_videos"

mkdir -p "$download_dir"

while IFS= read -r url
do
    # Skip empty lines
    if [[ -z "$url" ]]; then
        continue
    fi

    # Skip lines that start with #
    if [[ "$url" =~ ^# ]]; then
        continue
    fi

    echo "Downloading from URL: $url"
    youtube-dl -o "${download_dir}/%(title)s.%(ext)s" "$url"

    # Check if successful
    if [ $? -ne 0 ]; then
        echo "Download failed from: $url"
    else
        echo "Downloaded from $url"
    fi
done < "$url_file"

echo "All downloads completed."