#!/usr/bin/env bash

export PATH="$BATS_TEST_DIRNAME/stub:$PATH"

stub() {
  if [ ! -d $BATS_TEST_DIRNAME/stub ]; then
    mkdir $BATS_TEST_DIRNAME/stub
  fi
  echo $2 > $BATS_TEST_DIRNAME/stub/$1
  chmod +x $BATS_TEST_DIRNAME/stub/$1
}
rm_stubs() {
  rm -rf $BATS_TEST_DIRNAME/stub
}
