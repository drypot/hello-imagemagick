cmd=(
  convert
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

# 큰 차이는 아니지만 위 1번 방식이 테두리가 약간 더 고운 것 같다.
# 기존 코드 그대로 두기로.

cmd2=(
  magick
  images/apple.jpg
  -quality 92
  -gravity center
  -auto-orient
  -crop "2048x2048+0+0"
  +repage
  -resize "2048x2048>"
  \( -size 2048x2048 xc:white -fill black -draw "circle 1023.5,1023.5 1023.5,0" \)
  -compose lighten
  -composite
  tmp/osoky-apple.jpg
)

rm tmp/osoky-apple.jpg
echo "${cmd2[@]}"
"${cmd2[@]}"
