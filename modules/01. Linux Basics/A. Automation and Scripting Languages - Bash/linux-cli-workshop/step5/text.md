# Helpful commands:

> `COMMAND --help` - print usage of command and possible options  
> `pwd` - print working (current) directory  
> `cd [FILE]` - change working (current) directory  
> `ls [OPTION...] [FILE]...` - list all files in FILE directories OR in a current directory  
> `touch [OPTION...] FILE...` - update the access and modification times of each FILE to the current time, although if
> FILE doesn't exist, it will be created  
> `mkdir [OPTION...] DIRECTORY...` - create all DIRECTORIES, if they do not already exist  
> `{[FROM]..[TO]..[STEP]}` - create a list of integer numbers with a step, f.e. {1..10} creates a list of values: 1 2 3
> 4 5 6 7 8 9 10  
> `rm [OPTION...] FILE...` - remove (unlink) FILES.  
> `rmdir [OPTION...] DIRECTORY...` - remove the DIRECTORIES, if they are empty.  
> `mv [OPTION]... [-T] SOURCE DEST` or `mv [OPTION]... SOURCE... DIRECTORY` - rename SOURCE to DEST, or move SOURCE(s)
> to DIRECTORY.  
> `cp [OPTION]... [-T] SOURCE DEST` or `mv [OPTION]... SOURCE... DIRECTORY` - copy SOURCE to DEST, or multiple SOURCE(s)
> to DIRECTORY

# NOTES: how to use special symbols

There are special symbols * (any number of symbols), ? (only one symbol) and [] (set of symbols) you can use to mask
your query.  
F.e., I want to list all files in the working directory that start with , so I can try to do it this
way `ls ./a*`.  
Or, I want to find all files with '.xml' extension. Like this `ls ./*.xml`.  
Or, I want to find files that
have 4 letters and contain a vowel at the second position. Like this `?[aeiouy]??`.  
You've got the idea. Now, break the challenge. 

# Task description:

1. Remove all data from /task1
2. Copy files from /words to /task1/starts_scum with names that start from 's', 'c', 'u', 'm'
3. Copy files from /words to /task1/ends_trace with names that end on 't', 'r', 'a', 'c', 'e'
4. Copy files from /words to /task1/contains_ch_th_sh with names that contain 'ch', 'th', 'sh'
5. Copy files from /words to /task1/five_letters with names that contain only 5 letters
6. Move all files from previous directories (p.2-5) to /task1/sun_star that start with 's', 'u', 'n' and ends with '
   s', 't', 'a', 'r'
