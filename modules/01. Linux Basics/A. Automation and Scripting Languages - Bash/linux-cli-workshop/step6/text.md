# Helpful commands:

> `COMMAND --help` - print usage of command and possible options  
> `pwd` - print working (current) directory  
> `cd [FILE]` - change working (current) directory  
> `ls [OPTION]... [FILE]...` - list all files in FILE directories OR in a current directory  
> `stat [OPTION]... FILE...` - Display file or file system status  
> `chmod [OPTION]... MODE[,MODE]... FILE...` or  
> `chmod [OPTION]... OCTAL-MODE FILE...` - change the mode of each FILE to
> MODE

# OCTAL-MODE binary table

| r (read) | w (write) | x (execute) | binary_code | integer_code |
|----------|-----------|-------------|-------------|--------------|
| 0        | 0         | 1           | 001 (--x)   | 1            |
| 0        | 1         | 0           | 010 (-w-)   | 2            |
| 0        | 1         | 1           | 011 (-wx)   | 3            |
| 1        | 0         | 0           | 100 (r--)   | 4            |
| 1        | 0         | 1           | 101 (r-x)   | 5            |
| 1        | 1         | 0           | 110 (rw-)   | 6            |
| 1        | 1         | 1           | 111 (rwx)   | 7            |

# Task description:

1. Remove all data from /task1
2. Copy files from /permissions to /task1/permissions
3. Change working directory to /task1/permissions
4. Make file with name 'r_only' -r--r--r--
5. Make file with name 'owner_rwx_group_other_r' -rwxr--r--
6. Make file with name 'group_rwx_owner_other_r' -r--rwxr--
7. Make file with name 'other_rwx_owner_group_read' -r--r--rwx
8. Make file with name 'all_rwx' -rwxrwxrwx
9. Make file with name 'all_rw' -rw-rw-rw-
10. Make file with name 'owner_rx_group_rw_other_wx' -r-xrw--wx
11. Make file with name 'owner_r_group_x_other_w' -r----x-w-
12. Make file with name 'fully_blocked' ----------
