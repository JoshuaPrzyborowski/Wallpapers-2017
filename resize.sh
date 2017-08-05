#!/bin/bash

rmdir -p -v 900p
mkdir -p -v 900p
for f in *.jpeg; do
    convert "./${f}" -verbose -resize 1600x900 "./900p/${f}"
done
