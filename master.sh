#!/bin/bash

if [ $# -ne 1 ]; then
  echo "指定された引数は$#個です。" 1>&2
  echo "実行するには1個の引数が必要です。" 1>&2
  exit 1
fi 

cd ~/davr/bin/devel/master/

sh import_master.sh $1
echo $?

sh insert_master.sh $1
echo $?

