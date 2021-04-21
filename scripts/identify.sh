cmd=(
  magick
  identify
  -format "%m %w %h"
  images/apple.jpg
)

cmd2=(
  magick
  identify
  -format "%m %w %h"
  images/apple.jpg
)

echo "${cmd2[@]}"
"${cmd2[@]}"
