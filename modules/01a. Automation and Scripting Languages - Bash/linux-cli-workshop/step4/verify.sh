#!/bin/bash

# check all proper files exist
if ! cat /task1/metamorphosis/kill_bill /task1/metamorphosis/lord_of_the_rings /task1/metamorphosis/the_matrix | sha256sum | grep a7224d98504a416aa80fa08e62e071a8e802d4279cc8629e3210547294b4762b; then
  exit 1
fi

