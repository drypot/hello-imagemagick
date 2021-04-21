cmd=(
  convert
  images/apple.jpg
  -quality 92
  -auto-orient
  -resize "2048x2048>"
  tmp/raysoda-apple.jpg
)

cmd2=(
  magick
  images/apple.jpg
  -quality 92
  -auto-orient
  -resize "2048x2048>"
  tmp/raysoda-apple.jpg
)

rm tmp/raysoda-apple.jpg
echo "${cmd2[@]}"
"${cmd2[@]}"
