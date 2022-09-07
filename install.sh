#!/bin/sh
wpath=$(pwd -P | sed 's/\//\\\//g')
for f in *
do
  [ "$f" == "install.sh" ] || sed -i 's/{path}/'"${wpath}"'/g' "$f"
done
#echo "test{path}^^{path}exit" | sed 's/{path}/0pth0/g'
exit
cp youtubeurlplayer.desktop ~/.local/share/applications/
xdg-mime default youtubeurlplayer.desktop x-scheme-handler/ytu
