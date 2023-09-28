#!/bin/bash

# check all files contain right content
if ! cat /task1/exec/{perfect,imperfect}.log | sha256sum | grep 39aa1b7a745bd0e1c3a2fecf0555343ef86363856b23f352cb78390c9a8cd8a6; then
  exit 1
fi

if ! sha256sum /task1/exec/errors.log | grep 1631c5e1499f61e068a2bfacddad94d0f1b607496c9010e8aa1b5adf02e20d1d; then
  exit 1
fi