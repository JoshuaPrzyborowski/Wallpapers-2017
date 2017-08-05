#!/bin/bash

rmdir -p -v 360p 540p 720p 900p 1080p 1440p 1800p 2160p 2304p 2880p 4320p 4608p
mkdir -p -v 360p 540p 720p 900p 1080p 1440p 1800p 2160p 2304p 2880p 4320p 4608p
for f in *.jpeg; do
    convert "./${f}" -verbose -resize 640x360 "./360p/${f}"
    convert "./${f}" -verbose -resize 960x540 "./540p/${f}"
    convert "./${f}" -verbose -resize 1280x720 "./720p/${f}"
    convert "./${f}" -verbose -resize 1600x900 "./900p/${f}"
    convert "./${f}" -verbose -resize 1920x1080 "./1080p/${f}"
    convert "./${f}" -verbose -resize 2560x1440 "./1440p/${f}"
    convert "./${f}" -verbose -resize 3200x1800 "./1800p/${f}"
    convert "./${f}" -verbose -resize 3840x2160 "./2160p/${f}"
    convert "./${f}" -verbose -resize 4096x2304 "./2304p/${f}"
    convert "./${f}" -verbose -resize 5120x2880 "./2880p/${f}"
    convert "./${f}" -verbose -resize 7680x4320 "./4320p/${f}"
    convert "./${f}" -verbose -resize 8192x4608 "./4608p/${f}"
done
