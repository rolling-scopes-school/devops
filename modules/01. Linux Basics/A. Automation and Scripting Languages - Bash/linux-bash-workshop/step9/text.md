# Helpful commands:

> `#!/bin/bash` - so-called [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))

# Task description:

1. Create /scripts/user_conf.sh. It should read prompt from a user:  
- First name  
- Last name  
- Age  
  1.1 It should create a JSON file /scripts/user_conf.json which looks like below  
  1.2 Indentation equals 2 whitespaces.  
  1.3 All values should be strings
  1.4 Every call on this script should override the result file.  

```json
{
  "user": {
    "first_name": "John",
    "last_name": "Doe",
    "age": "19"
  }
}
```

2. Create /scripts/cards.sh:  
    2.1 It should take an argument - string.  
    2.2 It should verify if this string is a valid bank card number (contains only digits and follow this pattern XXXX-XXXX-XXXX-XXXX).  
    2.3 It should print 'Card number is valid/is not valid', f.e. `cards.sh 1ABC-1234-2345-3456` should print 'Card is not valid'