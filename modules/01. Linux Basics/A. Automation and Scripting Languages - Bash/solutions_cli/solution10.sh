rm -r /task1/*

mkdir -p /task1/it_will_be_tough

cp /grep_challenges/* /task1/it_will_be_tough

cat /task1/it_will_be_tough/emails | grep -E '\w*[aeiouy]{2}\w*@(gmail|outlook)\.com' | sort > /task1/it_will_be_tough/emails_result
cat /task1/it_will_be_tough/mac_addresses | grep -E '([0-9a-f]{2}:){5}[0-9a-f]{2}' | sort -r > /task1/it_will_be_tough/mac_addresses_result
cat /task1/it_will_be_tough/website.html | grep -oE '<img \w*src=.*\.png"' | grep -oE 'http.*png' | sort > /task1/it_will_be_tough/website_result