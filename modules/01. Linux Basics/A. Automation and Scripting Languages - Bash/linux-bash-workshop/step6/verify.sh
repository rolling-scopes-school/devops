#!/bin/bash

if [[ $(bash /scripts/hello.sh ZeBEdeE) != "Hello, Zebedee! This username has 7 letters: 4 vowels and 3 consonants. The rarest name!"
   || $(bash /scripts/hello.sh rafFErty) != "Hello, Rafferty! This username has 8 letters: 3 vowels and 5 consonants. The rarest name!"
   || $(bash /scripts/hello.sh aJax) != "Hello, Ajax! This username has 4 letters: 2 vowels and 2 consonants. Pretty uncommon name!"
   || $(bash /scripts/hello.sh gRoVer) != "Hello, Grover! This username has 6 letters: 2 vowels and 4 consonants. Pretty uncommon name!"
   || $(bash /scripts/hello.sh jAne) != "Hello, Jane! This username has 4 letters: 2 vowels and 2 consonants. Nothing special!"
   || $(bash /scripts/hello.sh) != "Hello, World!"
   ]];
     then exit 1
fi

if [[ $(bash /scripts/numbers.sh 31 1 2005) != "Valid date."
   || $(bash /scripts/numbers.sh 29 2 1998) != "Valid date."
   || $(bash /scripts/numbers.sh 31 3 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 30 4 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 31 5 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 30 6 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 31 7 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 31 8 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 30 9 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 31 10 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 30 11 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 31 12 2001) != "Valid date."
   || $(bash /scripts/numbers.sh 32 01 1996) != "Invalid date."
   || $(bash /scripts/numbers.sh -1 5 2001) != "Invalid date."
   || $(bash /scripts/numbers.sh 30 2 1998) != "Invalid date."
   || $(bash /scripts/numbers.sh 0 15 1995) != "Invalid date."
   ]];
   then exit 1
fi
