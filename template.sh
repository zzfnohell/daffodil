#! /bin/bash
src_path=`readlink -f $0`
src_path=`dirname $src_path`
dest_path=`readlink -f $1`

pushd $src_path 1>/dev/null
bash template/create "$dest_path"
popd 1>/dev/null
