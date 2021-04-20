args=(
  images/apple.jpg
  -quality 92
  -auto-orient
  -resize "2048x2048>"
  tmp/raysoda-apple.jpg
)

echo convert "${args[@]}"
convert "${args[@]}"
