#!/bin/sh

result=${PWD##*/}

rm -vr !("dist"|"scripts")
if [ $result = "core" ]
then
  cp -r ./dist/core ../
else
  cp -r ./dist/keepalive ../
fi
rm -r dist
rm -r scripts


