#!/bin/bash

# check all proper files exist
if ! ls /task1/secrets | sha256sum | grep 767a275f1a828e6e0b4f908edd6eaf37a4276e82e903a60613809e23ff927ff3; then
  exit 1
fi

# check copied content is the same
if ! sha256sum /task1/super_secret_data | grep d54de3ffd6d72716e85ceeda4562de1f56b4300b55ceba614225915003fb82c0; then
  exit 1
fi
