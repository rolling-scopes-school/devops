#!/bin/bash

# check all proper files exist
if ! ls /task1/sun_star | sha256sum | grep b288d79f8f1a4961ae038a63840b4cc1dab32b1c4487e9c35636c42e990d5e95; then
  exit 1
fi

