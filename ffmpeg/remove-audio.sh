#!/bin/bash

search_dir=`pwd`

for entry in "$search_dir"/*.mp4
do
    filename_with_extension="${entry##*/}"
    extension="${filename_with_extension##*.}"
    filename_without_extension="${filename_with_extension%.*}"
    echo "$filename_with_extension"
    echo "$filename_without_extension"_no_audio.mp4
    ffmpeg -i "$filename_with_extension" -c copy -an "$filename_without_extension"_no_audio.mp4
done
