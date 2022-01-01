#!/bin/bash

# ./traitement.sh /home/alexandrecuer/Documents/GitHub/portfolio/sources/balade1 vacances baladeEnHauteur 2021
# pour installer convert : sudo apt install imagemagick-6.q16

repo=$(pwd)

folder="${repo}/images/$2/$4/$3"
prefix="$2_$3"
echo $folder

#cd $1
if [ -d $folder ]; then
    rm -Rf $folder
fi
mkdir $folder
echo "an empty folder ${folder} has been created"

src="images"
nb=1
for i in `ls ${src}`
do
  img="${src}/${i}"
  if [ ! -d $img ]; then
      echo $img
      convert $img -resize 800x600 "${folder}/${prefix}_${nb}.jpg"
      convert $img -resize 200x150 "${folder}/${prefix}_${nb}-thumb.jpg"
      let nb+=1
  fi
done


