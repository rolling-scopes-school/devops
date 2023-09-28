# Helpful commands:

> `COMMAND --help` - print usage of command and possible options  
> `pwd` - print working (current) directory  
> `cd [FILE]` - change working (current) directory  
> `ls [OPTION]... [FILE]...` - list all files in FILE directories OR in a current directory  
> `cat [OPTION]... [FILE]...` - concatenate FILE(s) to standard output. With no FILE, or when FILE is -, read
> **_standard input_**.  
> `|` - redirect **_standard output_** to **_standard input_**. Then you can use any command to receive and handle it. F.e. `echo Hola! | sha256sum`  
> `grep [OPTION]... PATTERNS [FILE]...` - Search for PATTERNS in each FILE. When FILE is '-', read standard input.  
> `sort [OPTION]... [FILE]...` - Write sorted concatenation of all FILE(s) to standard output. With no FILE, or when FILE is -, read standard input.  

# NOTES:
 - The standard input (STDIN) device is the keyboard.
 - The standard output (STDOUT) device is the screen.

# Task description:

1. Remove all data from /task1
2. Copy files from /grep_challenges to /task1/it_will_be_tough
3. Write all emails with domains 'gmail' and 'outlook' which contain two vowels, following back-to-back from /task1/it_will_be_tough/emails to file /task1/it_will_be_tough/emails_result. F.e sh**au**n_omall**ey**@gmail.com or stipe_m**io**cic@outlook.com. Emails should be sorted alphabetically in ascending order.
4. Write all mac-addresses from /task1/it_will_be_tough/mac_addresses to file /task1/it_will_be_tough/mac_addresses_result. Addresses should be sorted alphabetically in descending order.
5. Write all URL links from img tags under 'src' attribute/task1/it_will_be_tough/website.html to file /task1/it_will_be_tough/website_result. Links should be sorted alphabetically in ascending order  