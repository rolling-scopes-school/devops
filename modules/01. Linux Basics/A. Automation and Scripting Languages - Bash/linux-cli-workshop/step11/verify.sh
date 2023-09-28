#!/bin/bash

# check all files contain right content
if ! cat /task1/it_will_be_tough/{emails,mac_addresses,website}_result | sha256sum | grep 5e0b633cd61fe4c44171dff8addec74fd61829ee5e9bba0f794a125c87c4e6ac; then
  exit 1
fi