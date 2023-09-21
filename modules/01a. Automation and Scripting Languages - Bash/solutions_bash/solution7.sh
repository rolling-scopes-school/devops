mkdir /scripts
cat > /scripts/hello.sh << EOD
#!/bin/bash

NAME=${1:-World}
CLEANED_NAME=${NAME//[^a-zA-Z]/}
LOWERCASED_NAME=${CLEANED_NAME,,}
NORMALIZED_NAME=${LOWERCASED_NAME^}
LENGTH=${#NORMALIZED_NAME}
VOWELS=0
CONSONANTS=0

for (( i=0; i<${#LOWERCASED_NAME}; i++ )); do
  if [[ "${LOWERCASED_NAME:$i:1}" == [aeuioy] ]]; then VOWELS=$(( $VOWELS + 1)); else CONSONANTS=$(( $CONSONANTS + 1)); fi
done

if [[ $NAME == "World" ]];
  then LETTERS_MESSAGE="";
  else LETTERS_MESSAGE="This username has ${LENGTH} letters: ${VOWELS} vowels and ${CONSONANTS} consonants.";
fi

case ${LOWERCASED_NAME} in
  "rafferty" | "zebedee" | "romilly" | "bee") RARITY_MESSAGE="The rarest name!";;
  "grover" | "ajax" | "ottilie" | "lorcan") RARITY_MESSAGE="Pretty uncommon name!";;
  "world") RARITY_MESSAGE="";;
  *) RARITY_MESSAGE="Nothing special!";;
esac

echo Hello, ${NORMALIZED_NAME}! ${LETTERS_MESSAGE} ${RARITY_MESSAGE}

EOD

cat /scripts/numbers.sh << EOD
#!/bin/bash

A=$1
B=$2
C=$3

DISCRIMINANT=$(( $B * $B - 4 * $A * $C ))

if [[ $DISCRIMINANT -gt 0 ]]; then
    EXPRESSION_A="((-${B}+sqrt(${B}^2-(4*${A}*${C})))/(2*${A}))"
    EXPRESSION_B="((-${B}-sqrt(${B}^2-(4*${A}*${C})))/(2*${A}))"
    echo $(printf "X1=%.2f, X2=%.2f" $(echo $EXPRESSION_A | bc -l) $(echo $EXPRESSION_B | bc -l))
  elif [[ $DISCRIMINANT -eq 0 ]]; then
    EXPRESSION_C="-${B}/(2*${A})"
    echo $(printf "X1=X2=%.2f" $(echo $EXPRESSION_C | bc -l))
  else
    echo 'There are no roots.'
fi
EOD