#!/bin/bash
set -x

input="$1"
echo "$input"

ffmpeg -i "${input}" -c:v vp8 -c:a libvorbis "${input::-4}".webm
ffmpeg -i "${input}" -c:v h264 -c:a aac "${input::-4}".mp4
ffmpeg -i "${input}" -c:v theora -c:a libvorbis "${input::-4}".ogg
