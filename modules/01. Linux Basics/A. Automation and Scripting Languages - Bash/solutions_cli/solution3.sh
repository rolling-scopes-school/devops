rm -r /task1/*
mkdir /task1/secrets

echo 415-726-078 > /task1/secrets/secret1
echo 150-419-834 > /task1/secrets/secret2
echo 576-254-398 > /task1/secrets/secret3

cat /task1/secrets/secret2 /task1/secrets/secret1 /task1/secrets/secret3 > /task1/super_secret_data

