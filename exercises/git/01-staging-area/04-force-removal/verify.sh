#/usr/bin/env bash

pushd sandbox > /dev/null

if [ -f file.txt ]; then
  echo fail: file.txt still present in working area
else
  if [[ $(git ls-files) ]]; then
    echo fail: file still in staging area
  else
    echo ok
  fi
fi

popd > /dev/null
