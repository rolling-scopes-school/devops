#!/bin/bash

# check all files contain right content
if ! cat /task1/canto_1/{of_lines,head_32,tail_32} | sha256sum | grep 4fb72915dbf11cc25888f696d98f49f4eff3b574101d2dba5f6d958cff53d360; then
  exit 1
fi