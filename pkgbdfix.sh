#!/bin/sh
mkdir /var/db/pkg/copy
cp /var/db/pkg/*.* /var/db/pkg/copy

if [ $(id -u) = 0 ]; then
   pkg update -f
   pkg upgrade
else
   sudo pkg update -f
   sudo pkg upgrade
fi

