#!/bin/sh

# To make a 16 column by 210 row twemoji/assets/72x72/*png:
# 1. Download and expand a release of twemoji, for example...
#    https://github.com/twitter/twemoji/archive/v13.0.1.zip
#    (from https://github.com/twitter/twemoji/releases)
# 2. copy the
# montage 72x72/*.png -background None -geometry 72x72+1+1 -tile 16x 74SpriteSheetColor.png
# cd 72x72
# for f in *.png; do echo $f >> ../spriteSheetIndex.txt; done
# cd ..

# for n in [32, 36, 48, 56, 64, 72] do puts " #{n}: #{n*16}x#{n*210}" end
#  32: 512x6720
#  36: 576x7560
#  48: 768x10080
#  56: 896x11760
#  64: 1024x13440

# Scale and dither color sprite sheet to make 1-bit sprite sheets
echo converting 32x32 o2x2
convert -resize 512x6720 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o2x2,2 \
   74SpriteSheetColor.png 32SpriteSheet_o2x2.png
echo converting 36x36 o2x2
convert -resize 576x7560 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o2x2,2 \
   74SpriteSheetColor.png 36SpriteSheet_o2x2.png
echo converting 48x48 o2x2
convert -resize 768x10080 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o2x2,2 \
   74SpriteSheetColor.png 48SpriteSheet_o2x2.png
echo converting 56x56 o2x2
convert -resize 896x11760 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o2x2,2 \
   74SpriteSheetColor.png 56SpriteSheet_o2x2.png
echo converting 64x64 o2x2
convert -resize 1024x13440 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o2x2,2 \
   74SpriteSheetColor.png 64SpriteSheet_o2x2.png

echo converting 32x32 o3x3
convert -resize 512x6720 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o3x3,2 \
   74SpriteSheetColor.png 32SpriteSheet_o3x3.png
echo converting 36x36 o3x3
convert -resize 576x7560 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o3x3,2 \
   74SpriteSheetColor.png 36SpriteSheet_o3x3.png
echo converting 48x48 o3x3
convert -resize 768x10080 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o3x3,2 \
   74SpriteSheetColor.png 48SpriteSheet_o3x3.png
echo converting 56x56 o3x3
convert -resize 896x11760 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o3x3,2 \
   74SpriteSheetColor.png 56SpriteSheet_o3x3.png
echo converting 64x64 o3x3
convert -resize 1024x13440 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o3x3,2 \
   74SpriteSheetColor.png 64SpriteSheet_o3x3.png

echo converting 32x32 o4x4
convert -resize 512x6720 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o4x4,2 \
   74SpriteSheetColor.png 32SpriteSheet_o4x4.png
echo converting 36x36 o4x4
convert -resize 576x7560 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o4x4,2 \
   74SpriteSheetColor.png 36SpriteSheet_o4x4.png
echo converting 48x48 o4x4
convert -resize 768x10080 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o4x4,2 \
   74SpriteSheetColor.png 48SpriteSheet_o4x4.png
echo converting 56x56 o4x4
convert -resize 896x11760 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o4x4,2 \
   74SpriteSheetColor.png 56SpriteSheet_o4x4.png
echo converting 64x64 o4x4
convert -resize 1024x13440 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o4x4,2 \
   74SpriteSheetColor.png 64SpriteSheet_o4x4.png

echo converting 32x32 o8x8
convert -resize 512x6720 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o8x8,2 \
   74SpriteSheetColor.png 32SpriteSheet_o8x8.png
echo converting 36x36 o8x8
convert -resize 576x7560 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o8x8,2 \
   74SpriteSheetColor.png 36SpriteSheet_o8x8.png
echo converting 48x48 o8x8
convert -resize 768x10080 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o8x8,2 \
   74SpriteSheetColor.png 48SpriteSheet_o8x8.png
echo converting 56x56 o8x8
convert -resize 896x11760 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o8x8,2 \
   74SpriteSheetColor.png 56SpriteSheet_o8x8.png
echo converting 64x64 o8x8
convert -resize 1024x13440 -colorspace gray -auto-level +level 0%x85% \
   -background white -alpha remove -ordered-dither o8x8,2 \
   74SpriteSheetColor.png 64SpriteSheet_o8x8.png
