for ADDRESS in "0.0.0.0" "1.2.3.4" "13.24.35.46" "123.234.1.5" "255.255.255.255" ;
do
  if [[ $(bash /scripts/address.sh ${ADDRESS}) != "IPv4" ]]; then
    exit 1
  fi
done

for ADDRESS in "-1.0.0.0" "1.256.3.4" "13.24.35" "123.234.1.5.21" "a.b.c.d" ;
do
  if [[ $(bash /scripts/address.sh ${ADDRESS}) != "Unknown" ]]; then
    exit 1
  fi
done;

for ADDRESS in "2001:0db8:0000:0000:0000:8a2e:0370:7334" "1111:0db8:2222:3333:4444:8a2e:5555:9999" ;
do
  if [[ $(bash /scripts/address.sh ${ADDRESS}) != "IPv6" ]]; then
    exit 1
  fi
done

for ADDRESS in "0db8:0000:0000:0000:8a2e:0370:7334" "1111:0db8:2222:3333:4444:8a2e:5555:9999:1234" "1111:0db8:22h2:3333:4444:8a2e:5555:9999" ;
do
  if [[ $(bash /scripts/address.sh ${ADDRESS}) != "Unknown" ]]; then
    exit 1
  fi
done

for ADDRESS in "12:34:56:78:ab:11" "32:34:56:98:cf:32" "12:34:ea:78:ab:45" ;
do
  if [[ $(bash /scripts/address.sh ${ADDRESS}) != "MAC" ]]; then
    exit 1
  fi
done

for ADDRESS in "12:34:56:78:gb:11" "32:34:56:-98:cf:32" "12:34:ea:78:ab" "32:34:56:98:cf:32:41" ;
do
  if [[ $(bash /scripts/address.sh ${ADDRESS}) != "Unknown" ]]; then
    exit 1
  fi
done

if [[ $(bash /scripts/numbers.sh 12) != "twelve"
   || $(bash /scripts/numbers.sh 17) != "seventeen"
   || $(bash /scripts/numbers.sh 38) != "thirty eight"
   || $(bash /scripts/numbers.sh 79) != "seventy nine"
   ]];
   then exit 1
fi