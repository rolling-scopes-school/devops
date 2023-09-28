#!/bin/bash

if [[ $(bash /scripts/hello.sh moNkeYShinE) != "Hello, Monkeyshine! This username has 11 letters: 5 vowels and 6 consonants."
   || $(bash /scripts/hello.sh cAlligan) != "Hello, Calligan! This username has 8 letters: 3 vowels and 5 consonants."
   || $(bash /scripts/hello.sh) != "Hello, World!"
   ]];
     then exit 1
fi

if [[ $(bash /scripts/numbers.sh 3 4 5) != "Sides are valid."
   || $(bash /scripts/numbers.sh 45 117 73) != "Sides are valid."
   || $(bash /scripts/numbers.sh 4 4 2) != "Sides are valid. This triangle is isoceles."
   || $(bash /scripts/numbers.sh 7 7 7) != "Sides are valid. This triangle is equilateral."
   ]];
   then exit 1
fi

if [[ $(bash /scripts/numbers.sh 0 0 0) != "Sides are not valid."
   || $(bash /scripts/numbers.sh 0 6 6) != "Sides are not valid."
   || $(bash /scripts/numbers.sh 1 2 3) != "Sides are not valid."
   || $(bash /scripts/numbers.sh 2 3 19) != "Sides are not valid."
   ]];
   then exit 1
fi