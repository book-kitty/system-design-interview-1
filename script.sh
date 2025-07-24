#!/bin/sh


NAMES="박우람 홍승근 양윤혁 정진범 백성윤 홍성민 TEMP"

for chapter in {1..9}; do
  if (( $chapter < 10 ))
  then
    folder_name=$chapter주차
  else
    folder_name=$chapter주차
  fi

  mkdir -p ./$folder_name

  for name in $NAMES; do
    personal_folder_path=$folder_name/$name/

    mkdir -p ./$personal_folder_path
    touch ./$personal_folder_path/dummy

    mkdir -p ./$personal_folder_path/img
    touch ./$personal_folder_path/img/dummy
  done
done
