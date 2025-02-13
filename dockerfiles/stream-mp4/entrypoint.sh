#!/bin/bash

# Выводим сообщение и ожидаем ввод URL от пользователя
read -p "Provide a link to the website: " URL

# Проверяем, был ли введен URL
if [ -z "$URL" ]; then
    echo "Error: No URL provided."
    exit 1
fi

TIMESTAMP=$(date +%H_%M_%d_%m_%Y)

# Запускаем yt-dlp с указанным URL
/usr/bin/yt-dlp -o "/opt/stream-mp4/video-$TIMESTAMP.mp4" "$URL"