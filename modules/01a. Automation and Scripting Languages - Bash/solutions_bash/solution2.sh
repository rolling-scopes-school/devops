mkdir /scripts
cat > /scripts/hello.sh << EOD
#!/bin/bash

NAME=${1:-World}
echo Hello, $NAME!
EOD

cat > /scripts/numbers.sh << EOD
#!/bin/bash

NUMBER=$1
if [ $(( $NUMBER % 2 )) -eq 0 ];
  then echo $NUMBER is even!
  else echo $NUMBER is odd!
fi
EOD
