cat > /scripts/address.sh << EOD
#!/bin/bash

ADDRESS=$1
if [[ $ADDRESS =~ ^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-5]{2})\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-5]{2})$ ]];
  then echo IPv4
elif [[ $ADDRESS =~ ^([A-Fa-f0-9]{4}:){7}[A-Fa-f0-9]{4}$ ]];
  then echo IPv6
elif [[ $ADDRESS =~ ^([A-Fa-f0-9]{2}:){5}[A-Fa-f0-9]{2}$ ]];
  then echo MAC
else echo Unknown
fi
EOD

cat /scripts/numbers.sh << EOD
#!/bin/bash

N=$1
TENS=$(( ($N / 10) * 10 ))
REM=$(( $N % 10 ))

function up_to_20() {
  N=$1
  case $N in
  0)
    ;;
  1)
    echo one
    ;;
  2)
    echo two
    ;;
  3)
    echo three
    ;;
  4)
    echo four
    ;;
  5)
    echo five
    ;;
  6)
    echo six
    ;;
  7)
    echo seven
    ;;
  8)
    echo eight
    ;;
  9)
    echo nine
    ;;
  10)
    echo ten
    ;;
  11)
    echo eleven
    ;;
  12)
    echo twelve
    ;;
  13)
    echo thirteen
    ;;
  14)
    echo fourteen
    ;;
  15)
    echo fifteen
    ;;
  16)
    echo sixteen
    ;;
  17)
    echo seventeen
    ;;
  18)
    echo eighteen
    ;;
  19)
    echo nineteen
    ;;
  esac
}

function more_than_20() {
    case $TENS in
    20)
      echo twenty $(up_to_20 $REM)
      ;;
    30)
      echo thirty $(up_to_20 $REM)
      ;;
    40)
      echo forty $(up_to_20 $REM)
      ;;
    50)
      echo fifty $(up_to_20 $REM)
      ;;
    60)
      echo sixty $(up_to_20 $REM)
      ;;
    70)
      echo seventy $(up_to_20 $REM)
      ;;
    80)
      echo eighty $(up_to_20 $REM)
      ;;
    90)
      echo ninety $(up_to_20 $REM)
      ;;
    esac
}

if [[ $N -lt 20 ]]; then
  RESULT=$(up_to_20 $N)
  else RESULT=$(more_than_20)
fi

echo $RESULT
EOD