cmd=(
  convert
  images/road.jpg
  -quality 92
  -gravity center
  -resize "5120x2880^"
  -crop 5120x2880+0+0
  +repage
  -write tmp/rapixel-5120.jpg
  -resize "4096x2304^"
  -crop 4096x2304+0+0
  +repage
  -write tmp/rapixel-4096.jpg
  -resize "2560x1440^"
  -crop 2560x1440+0+0
  +repage
  -write tmp/rapixel-2560.jpg
  -resize "1280x720^"
  -crop 1280x720+0+0
  +repage
  tmp/rapixel-1280.jpg
)

cmd2=(
  magick
  images/road.jpg
  -quality 92
  -gravity center
  -resize "5120x2880^"
  -crop 5120x2880+0+0
  +repage
  -write tmp/rapixel-5120.jpg
  -resize "4096x2304^"
  -crop 4096x2304+0+0
  +repage
  -write tmp/rapixel-4096.jpg
  -resize "2560x1440^"
  -crop 2560x1440+0+0
  +repage
  -write tmp/rapixel-2560.jpg
  -resize "1280x720^"
  -crop 1280x720+0+0
  +repage
  tmp/rapixel-1280.jpg
)

rm tmp/rapixel-*.jpg
echo "${cmd2[@]}"
"${cmd2[@]}"

