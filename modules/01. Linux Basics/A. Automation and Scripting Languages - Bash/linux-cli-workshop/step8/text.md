# Helpful commands:

> `COMMAND --help` - print usage of command and possible options  
> `pwd` - print working (current) directory  
> `cd [FILE]` - change working (current) directory  
> `ls [OPTION]... [FILE]...` - list all files in FILE directories OR in a current directory  
> `cat [OPTION]... [FILE]...` - concatenate FILE(s) to standard output. With no FILE, or when FILE is -, read
> **_standard input_**.  
> `echo [SHORT-OPTION]... [STRING]...` - display a line of text to **_standard output_**  
> `>` - redirect **_standard output_** to another source (file, device). Source content will be overwritten by redirected. If file doesn't exist, it will be created.  
> `>>` - redirect **_standard output_** to another source (file, device). Redirected content will be appended to source content. If file doesn't exist, it will be created.  
> `<` - redirect **_standard input_** from another source (file, device).

# NOTES:
 - The standard input (STDIN) device is the keyboard.
 - The standard output (STDOUT) device is the screen.

# Task description:

1. Remove all data from /task1 
2. Copy file from /dante to /task1
3. Using less, find all lines with word 'of' in the /task1/divine_comedy_canto_1. This time, write line numbers into a file /task1/canto_1/of_lines using `echo` and redirection
4. Using head, print first 32 bytes of file /task1/divine_comedy_canto_1. This time, write it into /task1/canto_1/head_32, using redirection.
5. Using tail, print first 32 bytes of file /task1/divine_comedy_canto_1. This time, write it into /task1/canto_1/tail_32, using redirection.
6. Write all file names from /words, starting with vowels, contain 6 letters and end not with vowels to a file /task1/words, using redirection.
7. Make sure your files end with a new line
