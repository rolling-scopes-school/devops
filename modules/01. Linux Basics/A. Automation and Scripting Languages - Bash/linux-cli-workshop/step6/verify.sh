#!/bin/bash

# check all files have right permissions
if ! stat --format=%n%A /task1/permissions/* | sort | sha256sum | grep 115ce2706c21f0f25a5965f8703741bde11c17e1aad577d5b041cee006d0a659; then
  exit 1
fi