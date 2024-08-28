#!/bin/bash

# ./traitement.sh /home/alexandrecuer/Documents/GitHub/portfolio/sources/balade1 vacances baladeEnHauteur 2021
# pour installer convert : sudo apt install imagemagick-6.q16

repo=$(pwd)

folder="${repo}/images/$2/$4/$3"
prefix="$2_$3"
echo $folder

if [ -d $folder ]; then
    rm -Rf $folder
fi
mkdir $folder
echo "an empty folder ${folder} has been created"

src="${1}"
nb=1
for i in `ls ${src}`
do
  img="${src}/${i}"
  if [ ! -d $img ] && [ "${i: -4}" != ".mp4" ]; then
      echo $img
      convert $img -resize 800x600 "${folder}/${prefix}_${nb}.jpg"
      convert $img -resize 200x150 "${folder}/${prefix}_${nb}-thumb.jpg"
      let nb+=1
  fi
done

land="${src}/landscape"
if [ -d $land ]; then
  for i in `ls ${land}`
  do
    img="${land}/${i}"
    if [ ! -d $img ]; then
        echo $img
        convert $img -resize 800x600 "${folder}/${prefix}_${nb}.jpg"
        convert $img -resize 100x75 "${folder}/${prefix}_${nb}-thumb.jpg"
        let nb+=1
    fi
  done
fi

target="${repo}/_posts"
now=$(date +%Y-%m-%d)
postname="${target}/${now}-${prefix}.md"

if [ -e $postname ]; then
  rm -f $postname
fi

let nb-=1

cat >> $postname <<EOF
---
layout: page
header: no
subheadline:  ${2}
title: ${3}
breadcrumb: true
permalink: /${2}/${4}/${3}
categories:
    - ${2}
tags:
    - ${2}
    - ${2}_${4}
image:
    base: ${2}/${4}/${3}/${2}_${3}
    start: 1
    max: ${nb}
---
{% include gallery %}
{: .t60 }
{% include list-posts tag='${2}_${4}' %}
EOF
