args=(
  images/apple.jpg
  -quality 92
  -gravity center
  -auto-orient
  -crop "2048x2048+0+0"
  +repage
  -resize "2048x2048>"
  \( -size 2048x2048 xc:black -fill white -draw "circle 1023.5,1023.5 1023.5,0" \)
  -alpha off
  -compose CopyOpacity
  -composite
  -background white
  -alpha remove
  -alpha off
  tmp/osoky-apple.jpg
)

echo convert "${args[@]}"
convert "${args[@]}"
