#!/bin/bash

usage()
{
    echo "Use run_test.sh like:"
    echo "run_test.sh {test_file.mac}"
};

if [ $# -ne 1 -o ! -f $1 ]; then
usage;
exit;
fi;

src_path=`readlink -f $0`
src_path=`dirname $src_path`
file=`readlink -f $1`
echo "Loading test..."
echo $file
maxima --init-mac="$src_path/init.mac" -b="$file"
echo "Loading test done."

