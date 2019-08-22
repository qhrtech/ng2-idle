#!/bin/sh

result=${PWD##*/}

rm -vr !("dist")
if [ $result = "core" ]
then
  cp -r ./dist/core ../
else
  cp -r ./dist/keepalive ../
fi
rm -r dist


