#!/bin/bash

# To make a 16 column by 210 row twemoji/assets/72x72/*png:
# 1. Download and expand a release of twemoji, for example...
#    https://github.com/twitter/twemoji/archive/v13.0.1.zip
#    (from https://github.com/twitter/twemoji/releases)
# 2. copy the
# montage 72x72/*.png -background None -geometry 72x72+1+1 -tile 16x 74SpriteSheetColor.png
# cd 72x72
# for f in *.png; do echo $f >> ../spriteSheetIndex.txt; done
# cd ..

# for n in [32, 36, 48, 56, 64] do puts " #{n}: #{n*16}x#{n*210}" end
#  32: 512x6720
#  36: 576x7560
#  48: 768x10080
#  56: 896x11760
#  64: 1024x13440

GRAY="-colorspace gray +level 0%x85% -background white -alpha remove"
CAPTION="-gravity South -splice 0x36 -pointsize 14 -annotate +0+2"
CCBY="emoji graphics by Twitter, Inc and other contributors CC-BY 4.0,\n 1-bit sprite sheet mod by Sam Blenny"
DITHER2="-ordered-dither o2x2,2"
DITHER3="-ordered-dither o3x3,2"
DITHER4="-ordered-dither o4x4,2"
SRC="74SpriteSheetColor.png"

# Scale and dither color sprite sheet to make 1-bit sprite sheets
echo converting 32x32 o2x2
convert -resize 512x6720 $GRAY $CAPTION "$CCBY" $DITHER2 $SRC 32SpriteSheet_o2x2.png
echo converting 36x36 o2x2
convert -resize 576x7560 $GRAY $CAPTION "$CCBY" $DITHER2 $SRC 36SpriteSheet_o2x2.png
echo converting 48x48 o2x2
convert -resize 768x10080 $GRAY $CAPTION "$CCBY" $DITHER2 $SRC 48SpriteSheet_o2x2.png
echo converting 56x56 o2x2
convert -resize 896x11760 $GRAY $CAPTION "$CCBY" $DITHER2 $SRC 56SpriteSheet_o2x2.png
echo converting 64x64 o2x2
convert -resize 1024x13440 $GRAY $CAPTION "$CCBY" $DITHER2 $SRC 64SpriteSheet_o2x2.png
echo converting 74x74 o2x2
convert $GRAY $CAPTION "$CCBY" $DITHER2 $SRC 74SpriteSheet_o2x2.png

echo converting 32x32 o3x3
convert -resize 512x6720 $GRAY $CAPTION "$CCBY" $DITHER3 $SRC 32SpriteSheet_o3x3.png
echo converting 36x36 o3x3
convert -resize 576x7560 $GRAY $CAPTION "$CCBY" $DITHER3 $SRC 36SpriteSheet_o3x3.png
echo converting 48x48 o3x3
convert -resize 768x10080 $GRAY $CAPTION "$CCBY" $DITHER3 $SRC 48SpriteSheet_o3x3.png
echo converting 56x56 o3x3
convert -resize 896x11760 $GRAY $CAPTION "$CCBY" $DITHER3 $SRC 56SpriteSheet_o3x3.png
echo converting 64x64 o3x3
convert -resize 1024x13440 $GRAY $CAPTION "$CCBY" $DITHER3 $SRC 64SpriteSheet_o3x3.png
echo converting 74x74 o3x3
convert $GRAY $CAPTION "$CCBY" $DITHER3 $SRC 74SpriteSheet_o3x3.png

echo converting 32x32 o4x4
convert -resize 512x6720 $GRAY $CAPTION "$CCBY" $DITHER4 $SRC 32SpriteSheet_o4x4.png
echo converting 36x36 o4x4
convert -resize 576x7560 $GRAY $CAPTION "$CCBY" $DITHER4 $SRC 36SpriteSheet_o4x4.png
echo converting 48x48 o4x4
convert -resize 768x10080 $GRAY $CAPTION "$CCBY" $DITHER4 $SRC 48SpriteSheet_o4x4.png
echo converting 56x56 o4x4
convert -resize 896x11760 $GRAY $CAPTION "$CCBY" $DITHER4 $SRC 56SpriteSheet_o4x4.png
echo converting 64x64 o4x4
convert -resize 1024x13440 $GRAY $CAPTION "$CCBY" $DITHER4 $SRC 64SpriteSheet_o4x4.png
echo converting 74x74 o4x4
convert $GRAY $CAPTION "$CCBY" $DITHER4 $SRC 74SpriteSheet_o4x4.png
