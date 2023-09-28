#!/bin/bash

if [[ $(bash /scripts/hello.sh) != "Hello, World!" || $(bash /scripts/numbers.sh) != "1 is odd!" ]];
  then exit 1
fi