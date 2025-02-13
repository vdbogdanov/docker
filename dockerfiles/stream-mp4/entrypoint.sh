#!/bin/bash

# Display the message and expect the user to enter the URL
read -p "Provide a link to the website: " URL

# Checking if the URL has been entered
if [ -z "$URL" ]; then
    echo "Error: No URL provided."
    exit 1
fi

TIMESTAMP=$(date +%H_%M_%d_%m_%Y)

# Launching yt-dlp from the specified URL
/usr/bin/yt-dlp -o "/opt/stream-mp4/video-$TIMESTAMP.mp4" "$URL"