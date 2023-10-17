# Helpful commands:

> `COMMAND --help` - print usage of command and possible options  
> `pwd` - print working (current) directory  
> `cd [FILE]` - change working (current) directory  
> `ls [OPTION]... [FILE]...` - list all files in FILE directories OR in a current directory  
> `cat [OPTION]... [FILE]...` - concatenate FILE(s) to standard output. With no FILE, or when FILE is -, read
> **_standard input_**.  
> `>` - redirect **_standard output_** to another source (file, device). Source content will be overwritten by redirected. If file doesn't exist, it will be created.  
> `>>` - redirect **_standard output_** to another source (file, device). Redirected content will be appended to source content. If file doesn't exist, it will be created.  
> `<` - redirect **_standard input_** from another source (file, device).  
> `bash [GNU long option] [option] script-file ...` - execute script-file with Bourne-again Shell  

# NOTES:
 - The standard input (STDIN) device is the keyboard.
 - The standard output (STDOUT) device is the screen.

# Task description:

1. Remove all data from /task1
2. You know how to use `touch` and `nano` as a text editor. This time create file /task1/dont_touch_and_echo_it/haiku, with content:
    > The old pond  
    A frog leaps in.  
    Sound of the water.  

    but don't use `touch`, `echo` and any text editors. Instead of this, find another way with power of **_redirection_**.
3. Copy shell script from /scripts/perfect_script.sh to /task1/exec/
4. Run it, make sure it prints a few messages to the console.
5. Now run it again, but this time redirect all output to /task1/exec/perfect.log
6. Copy shell script from /scripts/imperfect_script.sh to /task1/exec/
7. Run it, make sure it prints a few messages to the console and print an error as well.
8. Now run it again, but this time redirect all output to /task1/exec/imperfect.log, except error messages. Redirect them to /task1/exec/errors.log.