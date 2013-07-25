Linux Primer
============

Getting Started
---------------

There are many tutorials on the web, just Google around and you will find them. A decent online tutorial is available for example at http://www.linux.org/lessons/beginner/toc.html; one can also find books on Linux in a bookstore, for those who prefer a hard copy. Linux is derived from Unix, and many of its commands are identical with, or very similar to, older Unix commands. Since Apple's Mac OS X is also derived from a version of Unix (BSD Unix), many of these commands are the same as on a Mac. 

Essential Commands
------------------

Typically one interacts with a Unix/Linux system using a Command Line Interface (CLI), also known as a Terminal or a Shell. Unless one is using a Desktop Manager on a Linux system, running programs (commands) is by typing on the command line. Some of the more common commands that just about everyone uses
are listed below:

- ``pwd`` - "print working directory" prints the name of the current folder
- ``ls`` - list directory lists all the files in the current folder
- ``ls -l`` - long list lists the files along with permissions, creation dates, etc
- ``ls -A`` - list all files in current folder, including the hidden ones
- ``cd`` - change directory moves the current folder back to one's home folder
- ``cd <pathname>`` - change current folder to the one named by <pathname>
- ``cd ..`` - change to the parent folder of current folder
- ``mkdir <foldername>`` - make a new folder (folders are also known as directories)
- ``cat <filename>`` - prints the contents of a text file
- ``cat <file1> <file2> > <file3>`` - joins together text files <file1> and <file2> and puts the result in <file3> (cat - is short for concatenate)
- ``less <filename>`` - lets you scroll up and down through a text file; use Q to quit
- ``cp <file1> <file2>`` - makes a copy of <file1> named <file2> in the current folder; previous contents of <file2> (if any) are lost
- ``mv <file1> <file2>`` - move <file1> to <file2>; used to rename a file (previous contents of <file2> are lost)
- ``mv <foldername1> <foldername2>`` - move <foldername1> to <foldername2>; used to rename a folder name
- ``rm <file>`` - remove a file (delete it)
- ``rm -r *`` - recursively remove all files and folders in the current folder (be VERY careful with this)
- ``rm -r <foldername>`` - recursively remove the folder and all its contents, including subfolders and their files
- ``rmdir <foldername>`` - remove a folder (delete it); the folder must be empty
- ``man <command>`` - shows the manual page for the given <command>
- ``passwd`` - change your password
- ``lpr <filename>`` - print a file; should work with text, postscript, and .pdf files.
- ``lpq`` - show status of printer and print jobs
- ``lprm`` <printno> - remove a printer job from the queue
- ``a2ps`` - anything to postscript this (if installed) converts a file into postcript and then prints it; gives nicer formatting for text files
- ``nano`` - edit a text file with a user friendly interface
- ``pico`` - edit a text file (usually pico and nano are equivalent)
- ``nano <filename>`` - edit the named file
- ``vi <filename>`` - the old Unix visual editor; see the man page for help
- ``emacs <filename>`` - edit with the GNU Emacs editor; see the man page for help
- ``exit`` - quits the current Terminal session; CTRL-D often does the same
- ``ping <URL>`` - see if an IP address is answering 
- ``who`` - see who is logged on
- ``whoami`` - see who you are (for the existentially challenged)
- ``top`` - show the top running processes in a list, with process numbers
- ``kill <number>`` - kill a process number (you have to own the process)
- ``finger <name>`` - show stats for the user <name>; with no <name> finger shows stats for all current users

Note that by default you are positioned in your home folder after signing in. The file system is a tree with root at /, so to view the entire file system start by typing cd followed by ls and so forth. Pathnames are separated by forward slashes, so for example a file named whosis in your home folder /home/myuserid has pathname /home/myuserid/whosis. You can always refer to files by their fully qualified pathnames, but lacking the full pathname the system will look for the file in the current folder. Note that CTRL-C often cancels the current process, and CTRL-D often serves as an End of File marker. All of the above merely scratches the surface; see external documentation for further particulars and advice.

Why learn Linux?
----------------

Because Unix and its offshoots remains one of the most important operating systems for servers, and many networking concepts are rooted in Unix for historical reasons. Because Unix/Linux systems are efficient, fast, and highly stable. Because Unix/Linux is powerful: check out wildcards, regular expressions, pipes, redirecting input and output, shell scripts, and cron jobs for starters. There are some very cool ideas here for the cognoscenti that just don't in the Windows world (or are unwieldy when transplanted there). Linux is open source software.

Trying Linux
------------

For those who want to try it out on your personal laptop or desktop, find a decent Linux distribution such as Ubuntu (see ubuntulinux.org), download and burn the installation CD for your hardware, and boot from the CD. This will give you a working version of Linux running from the CD (slow) that can be played with. You can also choose to install Linux on your hard drive next to the existing OS (a dual boot approach) so that you can choose the OS at boot time, or choose to install Linux in place of your existing OS.
