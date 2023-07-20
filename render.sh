#!/bin/sh
mkdir -p out
for i in {1..5}
do
    node html5-animation-video-renderer/render.js --url=http://localhost:1234#h${i} --alpha --video=out/h${i}.mov
done
