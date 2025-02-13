FROM ubuntu:24.04

ENV TZ="Europe/Moscow"

RUN mkdir /opt/stream-ts

RUN apt update && apt upgrade -y
RUN apt install -y yt-dlp ffmpeg

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME [ "/opt/stream-mp4" ]

ENTRYPOINT [ "/entrypoint.sh" ]