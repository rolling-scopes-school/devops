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

# Task description:

1. Remove all data from /task1
2. There are three files somewhere in /findme. You should find them all.  
   2.1. When you find a file, you should copy it to /task1/secrets directory. Don't change origin filename.
3. After you find them, you should create file /task1/super_secret_data and copy codes from files you have found to it.
   Codes should be pasted in alphabetical order.
