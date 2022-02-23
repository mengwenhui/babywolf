#!/bin/bash
echo "Hello World!"

#start=2268
start=2875
count=0


url="curl -L http://mp3.aikeu.com/23736/"

target="/Users/allanmeng/Dropbox/audios/"
#target="/Users/allanmeng/mp3/"


while [ $count -le 99 ]
do
  f1=$(($start + $count))
  fn="$f1.mp3"

  cmd="$url$fn --output  $target$fn"
  echo $cmd
  # crawl
  $cmd 


  count=$(( $count + 1 ))
done
