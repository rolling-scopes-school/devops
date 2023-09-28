# Helpful commands:

> `#!/bin/bash` - so-called [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))

# Task description:

1. Modify /scripts/hello.sh:  
  1.1 If name exists, check its rarity.  
   - If the name is in the list of rare names [ Rafferty, Zebedee, Romilly, Bee ], it should print 'The rarest name!', f.e. `hello.sh zebedee` will print "Hello, Zebedee! This username has 7 letters: 4 vowels and 3 consonants. The rarest name!"
   - If the name is in the list of uncommon names [ Grover, Ajax, Ottilie, Lorcan], it should print 'Pretty uncommon name!', f.e. `hello.sh aJax` will print "Hello, Ajax! This username has 4 letters: 2 vowels and 2 consonants. Pretty uncommon name!"
   - Otherwise, it should print 'Nothing special!', f.e. `hello.sh jane` will print "Hello, Jane! This username has 4 letters: 2 vowels and 2 consonants. Nothing special!"
    1.2 Otherwise (without a name), It still prints 'Hello, World!'  
2. Modify /scripts/numbers.sh:  
    2.1 It should take three arguments - A(day), B(month) and C(year)  
    2.2 Those arguments are day, month and year of Gregorian calendar, respectively.  
    2.3 It should print if it is a valid date or not, f.e. `numbers.sh 12 7 2005` should print 'Valid date.' whereas `numbers.sh 5 14 2005` should print 'Invalid date.'  
    2.4 Any year is considered as valid. Leap year could be skipped.  
    2.5 Domain: -10000 <= A <= 10000, -10000 <= B <= 10000, -999999 <= C <= 999999
3. **(Optional)** Modify this date validation. Add a check to verify if the date is the 29 of February, year value should be a [Leap Year](https://en.wikipedia.org/wiki/Leap_year)