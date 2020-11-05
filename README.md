# hd1bemoji

emoji, but for high-dpi 1-bit monochrome

## Introduction

This project modifies the 72x72 PNG emoji files from the twemoji project
(release version 13.0.1) using the following pipeline:

1. Consolidate the 3360 individual PNG files from twemoji/assets/72x72/ into a
   16 column by 210 row sprite sheet using Imagemagick's montage tool. See
   [74SpriteSheetColor.png](74SpriteSheetColor.png).

2. Scale and convert the full size color PNG sprite sheet into 1-bit monochrome
   sprite sheets at a variety of sizes, and dithering methods. This stage uses
   Imagemagick's convert tool. The monochrome sprite sheets are
   32SpriteSheet_o2x2.png, ..., 64SpriteSheet_o8x8.png. The _o2x2, etc. suffix
   refers to which argument was given to convert's `-ordered-dither` switch.

This repository has files for the full size color sprite sheet and the converted
monochrome sprite sheets. To reproduce the full pipeline, you will need to get a
copy of the assets/72x72 directory from a twemoji release.

To determine the Unicode codepoints corresponding to positions in the sprite
sheets, refer to [spriteSheetIndex.txt](spriteSheetIndex.txt). Order of lines in
the index corresponds to left-to-right, top-to-bottom traversal of sprite sheet.

For details, see the [makeSpriteSheets.sh](makeSpriteSheets.sh) script.


## Legal

This project uses graphics from the twemoji project (CC-BY 4.0)

- Twemoji License Notice:

   > Copyright 2019 Twitter, Inc and other contributors
   >
   > Code licensed under the MIT License: http://opensource.org/licenses/MIT
   >
   > Graphics licensed under CC-BY 4.0: https://creativecommons.org/licenses/by/4.0/

- Twemoji Source Code Link: https://github.com/twitter/twemoji
