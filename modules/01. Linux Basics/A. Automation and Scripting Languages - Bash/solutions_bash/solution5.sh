mkdir /scripts
cat > /scripts/hello.sh << EOD
#!/bin/bash

NAME=${1:-World}
LENGTH=${#NAME}
LC_NAME=${NAME,,}
NORMALIZED_NAME=${LC_NAME^}
VOWELS=0
CONSONANTS=0

for (( i=0; i<${#LC_NAME}; i++ )); do
  if [[ "${LC_NAME:$i:1}" == [aeuioy] ]];
    then VOWELS=$(( $VOWELS + 1));
    else CONSONANTS=$(( $CONSONANTS + 1));
  fi
done

if [[ $NAME == "World" ]];
  then LETTERS_MESSAGE="";
  else LETTERS_MESSAGE="This username has ${LENGTH} letters: ${VOWELS} vowels and ${CONSONANTS} consonants.";
fi

echo Hello, ${NORMALIZED_NAME}! ${LETTERS_MESSAGE}
EOD

cat > /scripts/numbers.sh << EOD
#!/bin/bash

FIRST=$1
SECOND=$2
THIRD=$3
FS=$(( $FIRST + $SECOND ))
ST=$(( $SECOND + $THIRD ))
TF=$(( $THIRD + $FIRST ))

VALID_MESSAGE='Sides are valid.'
INVALID_MESSAGE='Sides are not valid.'

for SIDE in $FIRST $SECOND $THIRD
  do
    if [[ $SIDE -lt 1 ]];
      then IS_VALID="INVALID"
      break
    fi
done

if [[ $FS -gt $THIRD && $ST -gt $FIRST && $TF -gt $SECOND ]];
  then IS_VALID="VALID"
fi

if [[ $IS_VALID == "VALID" ]]; then
  if [[ $FIRST -ne $SECOND && $SECOND -ne $THIRD && $THIRD -ne $FIRST ]]; then
    ANSWER=$VALID_MESSAGE
  elif [[ $FIRST -eq $SECOND && $SECOND -eq $THIRD ]]; then
    ANSWER="$VALID_MESSAGE This triangle is equilateral."
  else
    ANSWER="$VALID_MESSAGE This triangle is isoceles."
  fi
  else ANSWER=$INVALID_MESSAGE
fi

echo $ANSWER
EOD