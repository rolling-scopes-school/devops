mkdir /scripts
cat > /scripts/hello.sh << EOD
#!/bin/bash

NAME=${1:-World}
LENGTH=${#NAME}
LOWERCASED_NAME=${NAME,,}
NORMALIZED_NAME=${LOWERCASED_NAME^}
VOWELS=0
CONSONANTS=0

for (( i=0; i<${#LOWERCASED_NAME}; i++ )); do
  if [[ "${LOWERCASED_NAME:$i:1}" == [aeuioy] ]]; then VOWELS=$(( $VOWELS + 1 )); else CONSONANTS=$(( $CONSONANTS + 1 )); fi
done

if [[ $NAME == "World" ]];
  then STAT_LETTERS_MESSAGE="";
  else STAT_LETTERS_MESSAGE="This username has ${LENGTH} letters: ${VOWELS} vowels and ${CONSONANTS} consonants.";
fi

case ${LOWERCASED_NAME} in
  "rafferty" | "zebedee" | "romilly" | "bee") RARITY_MESSAGE="The rarest name!";;
  "grover" | "ajax" | "ottilie" | "lorcan") RARITY_MESSAGE="Pretty uncommon name!";;
  "world") RARITY_MESSAGE="";;
  *) RARITY_MESSAGE="Nothing special!";;
esac

echo Hello, ${NORMALIZED_NAME}! ${STAT_LETTERS_MESSAGE} ${RARITY_MESSAGE}
EOD

cat /scripts/numbers.sh << EOD
#!/bin/bash

DAY=$1
MONTH=$2
YEAR=$3

echo $DAY $MONTH $YEAR
if [[ $MONTH -lt 1 || $MONTH -gt 12 || $DAY -lt 1 || $DAY -gt 31 ]]; then
  echo "Invalid date."; exit 0;
fi

case $MONTH in
  1 | 3 | 5 | 7 | 8 | 10 | 12)
    MAX_DAY=31
  ;;
  4 | 6 | 9 | 11)
    MAX_DAY=30
  ;;
  2)
    MAX_DAY=29
  ;;
  *)
  ;;
esac

if [[ $DAY -le $MAX_DAY ]]; then
    echo "Valid date."
  else
    echo "Invalid date."
fi
EOD
