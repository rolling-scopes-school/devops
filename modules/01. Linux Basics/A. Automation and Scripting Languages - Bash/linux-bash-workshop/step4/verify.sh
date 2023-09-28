#!/bin/bash

if [[ $(bash /scripts/hello.sh mePhistO) != "Hello, Mephisto! This username has 8 letters."
   || $(bash /scripts/hello.sh bAAl) != "Hello, Baal! This username has 4 letters."
   || $(bash /scripts/hello.sh) != "Hello, World!"
   ]];
     then exit 1
fi

if [[ $(bash /scripts/numbers.sh 15 42) != "Sum is 57, product is 630, average is 0.36"
   || $(bash /scripts/numbers.sh 5 13) != "Sum is 18, product is 65, average is 0.38"
   ]];
   then exit 1
fi