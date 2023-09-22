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
json
EOD

if [[ $(cat /scripts/json_result.json) != $(cat /scripts/user_conf.json) ]];
  then exit 1
fi

cat > /scripts/json_result.xml << EOD
<user>
  <firstName>John</firstName>
  <lastName>Jane</lastName>
  <age>23</age>
</user>
EOD

bash /scripts/user_conf.sh << EOD
John
Jane
23
xml
EOD

if [[ $(cat /scripts/json_result.xml) != $(cat /scripts/user_conf.xml) ]];
  then exit 1
fi

cat > /scripts/json_result.yml << EOD
user:
  firstName: John
  lastName: Jane
  age: 23
EOD

bash /scripts/user_conf.sh << EOD
John
Jane
23
yaml
EOD

if [[ $(cat /scripts/json_result.yml) != $(cat /scripts/user_conf.yml) ]];
  then exit 1
fi

#if [[ $(bash /scripts/cards.sh) "4175-0050-2516-4005" != "Card number is valid."
#   || $(bash /scripts/cards.sh) "4175-0050-5377-2596" != "Card number is valid."
#   || $(bash /scripts/cards.sh) "4026-8235-9548-6943" != "Card number is not valid."
#   ]];
#   then exit 1
#fi