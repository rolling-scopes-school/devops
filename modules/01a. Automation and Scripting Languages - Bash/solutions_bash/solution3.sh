mkdir /scripts

cat > /scripts/hello.sh << EOD
#!/bin/bash

NAME=${1:-World}
LENGTH=${#NAME}

if [[ $NAME == "World" ]]; then LETTERS_MSG=""; else LETTERS_MSG="This username has ${LENGTH} letters."; fi

echo Hello, ${NAME}! ${LETTERS_MSG}
EOD

cat > /scripts/numbers.sh << EOD
#!/bin/bash

FIRST=$1
SECOND=$2
if [ $FIRST -lt $SECOND ];
  then echo Maximum is $SECOND, minimum is $FIRST
  else echo Maximum is $FIRST, minimum is $SECOND
fi
EOD