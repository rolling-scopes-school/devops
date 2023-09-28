#!/bin/bash

EXPECTED_DIR=$(ls /task1)
# check only divine_comedy dir exists
if [ "$EXPECTED_DIR" != "divine_comedy" ]; then
  exit 1
fi

cat /task1/divine_comedy/chapter_{1..3} > /expected/step2

if ! sha256sum /expected/step2 | grep bac848fb87099d3a699f6577df5bf569c8539f1423d152796873d2b7f35212fa; then
    echo "not exist"
    exit 1
fi