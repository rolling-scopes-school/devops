# Helpful commands:

> `#!/bin/bash` - so-called [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))

# Task description:

1. Modify /scripts/hello.sh:  
  1.1 If name exists, sanitize it. Remove all non-letter symbols, f.e. `hello.sh pa8tri_ck` will print 'Hello, Patrick! This username has 7 letters: 2 vowels and 5 consonants. Nothing special!'  
  1.2 Otherwise (without a name), It still prints 'Hello, World!'
2. Modify /scripts/numbers.sh:  
   2.1 It should take three arguments.  
   2.2 Those arguments are coefficients A, B and C of [quadratic equation](https://en.wikipedia.org/wiki/Quadratic_equation) Ax2 + Bx + C = 0.  
   2.3 It should print the roots, scaled by 2, f.e.  
- `numbers.sh 2 12 7` should print 'X1=-0.65, X2=-5.35'
- `numbers.sh 1 12 36` should print 'X1=X2=-6.00' 
- `numbers.sh 5 2 15` should print 'There are no roots'  