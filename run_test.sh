#!/bin/bash

src_path=`readlink -f $0`
src_path=`dirname $src_path`

maxima --init-mac="$src_path/test.mac"
