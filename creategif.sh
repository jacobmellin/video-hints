#!/bin/sh
# ffmpeg -i out/h2.mov -vf cropdetect /tmp/out.mov
ffmpeg -i out/h2.mov -vf "crop=470:420:50:548,fps=30,scale=400:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 ./images/h2_small.gif