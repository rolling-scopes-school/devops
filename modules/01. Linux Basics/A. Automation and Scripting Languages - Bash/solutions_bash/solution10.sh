cat > /scripts/user_json.sh << EOD
#!/bin/bash

read -p "First name: " F_NAME
read -p "Last name: " L_NAME
read -p "Age: " AGE
read -p "Format: " FORMAT

case $FORMAT in
json)
cat > /scripts/user_conf.json << EOJF
{
  "user": {
    "first_name": "${F_NAME}",
    "last_name": "${L_NAME}",
    "age": "${AGE}"
  }
}
EOJF
  ;;
xml)
cat > /scripts/user_conf.xml << EOXF
<user>
  <firstName>${F_NAME}</firstName>
  <lastName>${L_NAME}</lastName>
  <age>${AGE}</age>
</user>
EOXF
  ;;
yaml)
cat > /scripts/user_conf.yml << EOYF
user:
  firstName: ${F_NAME}
  lastName: ${L_NAME}
  age: ${AGE}
EOYF
;;
*)
  echo Unknown format; exit 1;
esac
EOD
