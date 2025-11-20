#!/bin/bash
# Chrome Pulse Pink - Wallpaper Script
# Y2K Retrofuturism Aesthetic

sleep 1

# Set your wallpaper path here
WALLPAPER="$HOME/Pictures/shark.jpg"

# Fallback to a solid color if wallpaper not found (deep void)
if [ ! -f "$WALLPAPER" ]; then
    echo "Wallpaper not found: $WALLPAPER"
    echo "Using fallback solid color (void black)"
    swww img - <<< $(printf '\x0B\x0C\x10' | xxd -r -p)
    exit 0
fi

# Y2K Aesthetic: Wipe transition with slight angle for dynamic feel
# Longer duration for that smooth CRT fade effect
swww img "$WALLPAPER" \
    --transition-type wipe \
    --transition-duration 2 \
    --transition-fps 60 \
    --transition-angle 30

echo "Wallpaper set successfully with Y2K aesthetic transition"
