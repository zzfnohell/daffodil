#!/bin/bash

src_path=`readlink -f $0`
src_path=`dirname $src_path`
file=`readlink -f $1`
echo "Loading file..."
echo $file
maxima --init-mac="$src_path/init.mac"
echo "Loading file done."
