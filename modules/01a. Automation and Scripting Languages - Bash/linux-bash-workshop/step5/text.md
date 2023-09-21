# Helpful commands:

> `#!/bin/bash` - so-called [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))  
> 

# Task description:

1. Modify /scripts/hello.sh:  
    1.1 If name exists, the script also should print quantity of vowels and consonants, f.e. `hello.sh geORGe` will print "Hello, George! This username has 6 letters: 3 vowels and 3 consonants."  
    1.2 Otherwise, It still prints 'Hello, World!'
2. Modify /scripts/numbers.sh:  
    2.1 It should take three numbers - A, B and C  
    2.2 Those numbers are sides of triangle.  
    2.3 It should print if it is possible to draw a triangle with those sides, f.e. `numbers.sh 12 14 19` should print 'Sides are valid' and `numbers.sh 2 3 19` should print 'Sides are not valid.'  
    2.4. If these are sides of equilateral or isoceles triangle ([wiki page](https://en.wikipedia.org/wiki/Triangle)), put an additional message with this property, f.e. 'Sides are valid. This triangle is equilateral/isoceles.'  
    2.5 Domain: 0 <= A <= 10000, 0 <= B <= 10000, 0 <= C <= 10000  