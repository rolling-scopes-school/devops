#!/bin/bash

cat > /scripts/json_result.json << EOD
{
  "user": {
    "first_name": "John",
    "last_name": "Jane",
    "age": "23"
  }
}
EOD

bash /scripts/user_conf.sh << EOD
John
Jane
23
EOD

if [[ $(cat /scripts/json_result.json) != $(cat /scripts/user_conf.json) ]];
  then exit 1
fi

if [[ $(bash /scripts/cards.sh "4215-3106-5750-2197") != "Card number is valid"
   || $(bash /scripts/cards.sh "42A5-3106-5750-2197") != "Card number is not valid"
   || $(bash /scripts/cards.sh "4215-3106=5750-2197") != "Card number is not valid"
   || $(bash /scripts/cards.sh "4215-3106-5750-21975") != "Card number is not valid"
   || $(bash /scripts/cards.sh "4215-3106-5750-2197-1234") != "Card number is not valid"
   || $(bash /scripts/cards.sh "4215-3106-5750") != "Card number is not valid"
   || $(bash /scripts/cards.sh "4215-3106-575-2197") != "Card number is not valid"
   ]];
   then exit 1
fi