#!/bin/bash

usage()
{
    echo "Use run.sh like:"
    echo "run.sh {batch.mac}"
};

if [ $# -ne 1 -o ! -f $1 ]; then
usage;
exit;
fi;

src_path=`readlink -f $0`
src_path=`dirname $src_path`
file=`readlink -f $1`
echo "Loading file..."
echo $file
maxima --init-mac="$src_path/init.mac" -b="$file"
echo "Loading file done."
