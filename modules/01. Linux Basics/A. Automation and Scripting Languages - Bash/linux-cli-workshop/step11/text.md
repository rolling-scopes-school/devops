# Helpful commands:

> `COMMAND --help` - print usage of command and possible options  
> `pwd` - print working (current) directory  
> `cd [FILE]` - change working (current) directory  
> `ls [OPTION]... [FILE]...` - list all files in FILE directories OR in a current directory  
> `sed [OPTION]... {script-only-if-no-other-script} [input-file]...` - in-built stream editor, can process and modify stream of symbols

# Task description:

1. Remove all data from /task1
2. Create directory /task1/sed_results
3. Copy file from /dante to /task1/sed_results
4. Print first 20 lines of divine_comedy_canto_1. Replace all vowels with '_' (underscore). Write them into /task1/sed_results/beatbox_cheatsheet
5. Print first 20 lines of divine_comedy_canto_1. Replace all consonants with '.' (dot). Write them into /task1/sed_results/hard_pronunciation
6. Print first 20 lines of divine_comedy_canto_1. Replace all vowels with '-' (dash), all consonants with '.' (dot). Remove all other symbols. Write them into /task1/sed_results/i_am_samuel_morse
7. Print first 20 lines of divine_comedy_canto_1. Double all doubled consonants, f.e. 'well' -> 'wellll', 'passed' -> 'passssed'. Uppercase all double vowels, f.e. 'oozy' -> 'OOzy', 'fleet' -> 'flEEt'. Write them into /task1/sed_results/dr_feelgood
8. Print first 20 lines of divine_comedy_canto_1. Add leading and trailing '-' (dash) to each word. Remove all spaces and commas. Write it to /task1/sed_results/fancy_kebab
9. Print first 20 lines of divine_comedy_canto_1. Add two leading spaces to lines that start with vowels. Replace all dots that are placed at the end of the line with '!!!' (three exclamation marks). Write it into /task1/sed_results/from_the_start_to_the_end