# Linux Introduction

## Theoretical part

To enhance your understanding of the topic, you have to follow the link that contains a presentation.

### [Linux Basics](https://www.canva.com/design/DAFnptjvWN0/81lhACyF4NXhUnEv4bUE9A/edit?utm_content=DAFnptjvWN0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

#### Course goal

Our course is designed to provide you with both theoretical and practical knowledge in various aspects of Linux, including:

- OS configuration (access management, security)
- User management
- Software installation and configuration
- Networking
- Linux utilities (for troubleshooting and bash scripting)
- Disk and space management
- Understanding specified Linux directories
By the end of the course, you'll have a solid foundation in Linux and be able to perform essential tasks with confidence.

#### What is Linux

Linux is a Unix-like computer operating system that is assembled under the model of free and open-source software development and distribution. The defining component of Linux is the Linux kernel, which is a computer program that is the core of a computer's operating system, with complete control over everything in the system. The kernel handles the rest of start-up as well as input/output requests from software, translating them into data-processing instructions for the central processing unit. It also handles memory and peripherals like keyboards, monitors, printers, and speakers.

#### Linux distributions

Linux distributions are variations of the Linux operating system that are built on top of the Linux kernel. There are currently over 300 Linux distributions, with most of them being actively developed and maintained. These distros are designed to provide users with different options and choices when it comes to their computing needs.

Some of the most popular Linux distributions include:

1. Ubuntu
2. Debian
3. Fedora
4. CentOS
5. Arch Linux
6. openSUSE
7. Lubuntu
8. Linux Mint
9. Manjaro
10. SteamOS

These are just a few examples of the many Linux distributions available. Each distro has its own unique features, strengths, and weaknesses, and choosing the right one for your needs can be a daunting task. However, with so many options available, there is sure to be a distro that is perfect for you.

#### Shell

A shell is a software program that serves as an intermediary between a user and the operating system (OS) kernel. It provides a command-line interface for interacting with the OS and executing commands.
The architecture of a shell is relatively simple and resembles a pipeline. It processes input from the user, parses and expands symbols, and then executes commands using either built-in shell commands or external commands.

There are several types of shells available, including:

1. The Bourne Shell (sh)
2. The C Shell (csh)
3. The Korn Shell (ksh)
4. The GNU Bourne-Again Shell (bash)

Each shell has its own set of features and capabilities, and users can choose the one that best suits their needs.

#### File systems

Linux file systems are an essential part of the Linux operating system, and there are several types of file systems that can be used in Linux. Here are some key things to know about Linux file systems:

1. Types: ext2, ext3, ext4, XFS, JFS, Btrfs
2. Structure: Hierarchical, with a root directory (/) and subdirectories and files below it
3. Permissions: Read, write, execute, for owner, group, and others
4. Ownership: Each file and directory has an owner, which is the user or group that created it
5. Links: Symbolic links allow for easy access to files or directories located in different parts of the file system
6. Can be mounted: Allowing access to files on remote servers or external storage devices
7. Security: File permissions, access control lists (ACLs), and encryption
8. Maintenance: Regular tasks include checking for errors, updating metadata, and defragmenting the file system
9. Backup: Regularly backing up the file system protects against data loss
10. Recovery: Tools like fsck, e2fsck, and xfs_repair can be used to recover data in case of a file system failure.

These are just a few of the key things to know about Linux file systems. Understanding how file systems work and how to manage them is essential for using Linux effectively and ensuring the security and integrity of data.

#### LVM

LVM (Logical Volume Manager) is a device mapper and logical volume management system for Linux. It allows you to create logical volumes, which are virtual disk devices that can be used to store data. LVM provides several benefits over traditional disk partitioning, including flexibility, scalability, reduced complexity, and improved performance. It is commonly used in Linux servers and workstations, as well as in cloud computing environments.

#### SWAP

Swap is a feature in Linux that temporarily transfers data from RAM to a reserved space on a hard drive when RAM is full. This frees up memory for other uses, but swap is slower than RAM and can impact performance if used excessively. It's best to have enough physical memory to avoid relying on swap.

#### Disk Quotas

Disk quotas can be used to restrict disk space and alert a system administrator before a user consumes too much space or a partition becomes full. Quotas can be set for individual users or user groups, allowing for separate management of user-specific files and project files. Additionally, quotas can control the number of inodes, which allows for control over the number of files that can be created.

#### Boot Loaders

When a computer is turned off, its software remains on non-volatile memory. When powered on, the computer executes a small program stored in ROM to access nonvolatile devices and load the operating system and data into RAM. This program is called a bootstrap loader or boot loader.
Two popular boot loaders are LILO and GRUB. LILO is standard on Linux distributions but is older and less powerful. GRUB is easier to administer and supports network booting and MD5 passwords.

#### Runlevels

A "runlevel" is a way to describe the state of a computer system after it has finished booting up. It's like a mode or a setting that the system is in.
In traditional Linux systems, there are seven runlevels, numbered from 0 to 6. Each runlevel has a different purpose or function. For example, runlevel 3 is used for multi-user mode, while runlevel 5 is used for graphical mode.
The default runlevel is the one that the system starts up in when it boots up. In most Linux systems, the default runlevel is 3, 4, or 5.
In systemd, the concept of runlevels is replaced by "targets". A target is a specific state or mode that the system can be in. For example, the "graphical.target" is a target that represents the graphical mode.

## Practical part

You should learn about the shell, take the KillerCoda workshops. In these KillerCoda scenarios, you will follow the below steps:

### Mandatory task

Learn how to get started with a Linux system by taking [The Linux foundations course](https://killercoda.com/pawelpiwosz/course/linuxFundamentals) by Pawel Piwosz

1. Listing files and directories
2. How to use the man command for help
3. Working with directories
4. Basic operations on files
5. Pipes and redirections
6. Reading files
7. Copying and moving files
8. Understanding system performance
9. Finding processes in the system
10. Creating aliases
11. Working with users
12. Navigating through hystory
13. Elevating privileges
14. Working with logs
15. Streams
16. Crontab
17. Getting basic information about files
18. Working with links and understanding the difference between soft and hard links
19. Explaining inodes
20. Working with file permissions

### Option task

Become a Linux administrator with [The Linux advanced course](https://killercoda.com/pawelpiwosz/course/linuxAdvanced) by Pawel Piwosz (you may choose to complete this optional task and earn extra points)

1. gzip - Archive files with gzip
2. tar - Archive files with tar
3. Compression tools
4. Compressed tar
5. Installing packages
6. Packages sources
7. Configuration of apt
8. Learn more about packages
9. Cleaning the cache
10. Manage packages with dpkg
11. Boot process and kernel
12. Work with services
13. Ulimits
14. Test ulimits in practice

## How to complete the task

1. Sign in to KillerCoda:
   - Access the KillerCoda platform.
   - Use your GitHub account to sign in.

2. Complete the entire workshop:
   - Go through all the workshop materials and exercises.
   - Make sure to complete all the required tasks and activities.
   - Do not close the KillerCoda environment after finishing the workshop.

3. Execute an `echo` command with your GitHub name in the KillerCoda environment console:
   - In the KillerCoda environment console, enter the following command:

     ```bash
     echo <your GitHub name>
     ```

   - Replace `<your GitHub name>` with your actual GitHub username.
   - For example: `$ echo rsschool-repository`

4. Validate your participation:
   - Once you have executed the `echo` command, take a screenshot of the completion screen in the KillerCoda environment console.
   - The screenshot should clearly show your GitHub name, the date, and time.
   - Make sure all the required information is visible in the screenshot.

5. Cross-check:
   - Upload the screenshot to the RS School portal.
   - Your submission will be cross-checked by another student from the course.
   - Additionally, you will be assigned to check someone else's result.
   - Follow the instructions provided in the RS School portal to complete the cross-check process.

Note: It is important to follow all the instructions accurately and provide the necessary evidence to validate your participation in the workshop.

## Contacts

Please, feel free to reach me or anyone from RS School out. My [Discord](https://discordapp.com/users/731965143411327006) and [GitHub](https://github.com/sid-brest)
