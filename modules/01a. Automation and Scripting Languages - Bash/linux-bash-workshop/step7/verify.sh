#!/bin/bash

if [[ $(bash /scripts/hello.sh moN3keY_Shin-E) != "Hello, Monkeyshine! This username has 11 letters: 5 vowels and 6 consonants. Nothing special!"
   || $(bash /scripts/hello.sh cA4^lliga=n) != "Hello, Calligan! This username has 8 letters: 3 vowels and 5 consonants. Nothing special!"
   || $(bash /scripts/hello.sh b4e4e) != "Hello, Bee! This username has 3 letters: 2 vowels and 1 consonants. The rarest name!"
   || $(bash /scripts/hello.sh) != "Hello, World!"
   ]];
     then exit 1
fi

if [[ $(bash /scripts/numbers.sh 1 6 9) != "X1=X2=-3.00"
   || $(bash /scripts/numbers.sh 1 6 5) != "X1=-1.00, X2=-5.00"
   || $(bash /scripts/numbers.sh 1 6 10) != "There are no roots."
   ]];
  then exit 1
fi