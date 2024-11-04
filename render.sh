#!/bin/zsh

for source in ./assets/pieces/raw/*.svg;do
  target=./assets/pieces/previews/$(basename $source .svg).png
  svgexport $source $target png 100%
#  if [[ ! -f $target ]];then
#    echo $source $target png 100%
#  fi
done #| xargs -P 64 -n 4 svgexport
