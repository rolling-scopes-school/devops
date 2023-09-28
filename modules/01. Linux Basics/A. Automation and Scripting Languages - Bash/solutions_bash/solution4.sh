mkdir /scripts
cat > /scripts/hello.sh << EOD
#!/bin/bash

NAME=${1:-World}
LENGTH=${#NAME}
LC_NAME=${NAME,,}
NORMALIZED_NAME=${LC_NAME^}

if [[ $NAME == "World" ]]; then LETTERS_MSG=""; else LETTERS_MSG="This username has ${LENGTH} letters."; fi

echo Hello, ${NORMALIZED_NAME}! ${LETTERS_MSG}
EOD

cat > /scripts/numbers.sh << EOD
#!/bin/bash

FIRST=$1
SECOND=$2
SUM=$((FIRST + SECOND))
PRODUCT=$((FIRST * SECOND))
AVERAGE=$(echo "$FIRST / $SECOND" | bc -l)
printf "Sum is %d, product is %d, average is %.2f\n" $SUM $PRODUCT $AVERAGE

EOD
