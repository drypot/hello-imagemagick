cmd=(
  magick
  images/apple.jpg
  tmp/apple.png
)

echo "${cmd[@]}"
"${cmd[@]}"
