#!/bin/bash
# Determine the current screen resolution using xdpyinfo
resolution=$(xdpyinfo | grep dimensions | awk '{print $2}')

# Specify locations for the source image and a temporary scaled image
original_image="$HOME/.config/images/lockscreen.png"
tmp_image="/tmp/lockscreen_scaled.png"

# Use ImageMagick's convert to scale the image to the current resolution.
# The exclamation mark '!' forces the image to match the resolution exactly.
convert "$original_image" -resize ${resolution}\! "$tmp_image"

# Lock the screen using i3lock with the scaled image.
# The "$@" allows you to pass additional arguments (like --nofork) from the i3 config.
i3lock -i "$tmp_image" "$@"
