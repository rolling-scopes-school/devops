#!/bin/bash

ls /task1/test_dir_1 > /expected/step1
ls /task1/test_dir_2 >> /expected/step1
ls /task1/test_dir_3 >> /expected/step1

if ! sha256sum /expected/step1 | grep 237eef37d83d9063571fd81d7803c1f9cfa1346524222722216d7faf9d1d9fea; then
    exit 1
fi