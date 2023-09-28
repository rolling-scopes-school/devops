#!/bin/bash

if [[ $(bash /scripts/hello.sh Helen) != "Hello, Helen! This username has 5 letters."
   || $(bash /scripts/hello.sh Baal) != "Hello, Baal! This username has 4 letters."
   || $(bash /scripts/hello.sh) != "Hello, World!"
   ]];
     then exit 1
fi

if [[ $(bash /scripts/numbers.sh 42 15) != "Maximum is 42, minimum is 15"
   || $(bash /scripts/numbers.sh 5 13) != "Maximum is 13, minimum is 5"
   ]];
   then exit 1
fi