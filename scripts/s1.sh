cmd=(
  hello world
  \( 1 2 3 \)
  abc
  $(ls)
)

echo "${cmd[@]}"
