#!/usr/bin/env bash
convert -density 600 ../template.pdf -alpha off -resize 12.5% template.png
pngquant --ext -shrunk.png template-*.png
find . -iname "*[0-9].png" -exec rm {} \;
