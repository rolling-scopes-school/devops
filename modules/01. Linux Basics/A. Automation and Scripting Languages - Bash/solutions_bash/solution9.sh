cat > /scripts/user_json.sh << EOD
#!/bin/bash

read -p "First name: " F_NAME
read -p "Last name: " L_NAME
read -p "Age: " AGE

cat > /scripts/user_conf.json << EOJF
{
  "user": {
    "first_name": "${F_NAME}",
    "last_name": "${L_NAME}",
    "age": "${AGE}"
  }
}
EOJF
EOD

cat > /scripts/cards.sh << EOD
#!/bin/bash

C_NUMBER=$1

if [[ $C_NUMBER =~ ^([0-9]{4}-){3}[0-9]{4}$ ]];
  then echo Card number is valid
  else echo Card number is not valid
fi
EOD
