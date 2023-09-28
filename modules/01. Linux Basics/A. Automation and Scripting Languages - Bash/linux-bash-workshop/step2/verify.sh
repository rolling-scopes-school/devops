#!/bin/bash

if [[ $(bash /scripts/hello.sh JoHn) != "Hello, JoHn!"
   || $(bash /scripts/hello.sh andaRiel) != "Hello, andaRiel!"
   || $(bash /scripts/hello.sh) != "Hello, World!"
   ]];
     then exit 1
fi

if [[ $(bash /scripts/numbers.sh 42) != "42 is even!"
   || $(bash /scripts/numbers.sh 69) != "69 is odd!"
   ]];
     then exit 1
fi