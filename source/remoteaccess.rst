Remote Access
=============

All users of our systems can access their files remotely; however, we currently
do not provide general support to students or faculty for Samba and CIFS shares
(i.e. mounting as a Windows drive) owing largely to security and usability
considerations. (There is a legacy Samba setup; however, no support is
provided.) There are a number of alternatives to Windows shares that we do
support and consider effective for most needs.

sshfs
-----

If you are a Linux or Mac user, you can use the Secure Shell Filesystem client,
which makes use of the Fuse project. Linux users can simply install the sshfs
package (e.g., on Ubuntu: ``apt-get install sshfs``). The Dokan project on
Windows provides the same capabilities as sshfs on Linux and the Mac.

Secure FTP (sftp)
-----------------

Most Secure Shell clients have the ability to upload/download files. If you are
looking for something that is less transparent than a typical filesystem and
can live with an upload/download model, this might be all you need (and
seemingly, is what most of our users want).

Version Control Systems
-----------------------

We recommend that all of our students learn how to use the Concurrent
Versioning System (CVS) or Subversion, especially for programming classes.
Source code management is available through command-line tools or nicely
integrated into many development environments, such as Eclipse and NetBeans
(even Visual Studio supports Subversion through the AnkhSVN add-in). The
TortoiseSVN and TortoiseHg clients for Windows are particularly nice!

Gnome and KDE
-------------

If you are an Ubuntu desktop user at home, both of these UIs allow you to
connect to a remote place via SSH and browse folders as part of the UI's shell
(that is, you don't need to go to the dreaded terminal). In Gnome, Places ->
Connect to Server will allow a user to connect to a ssh server and will then
treat that connection to your home directory like a mounted drive. 

PuTTY and Cygwin
----------------

Speaking of SSH access, Windows users are encouraged to use the PuTTY or Cygwin
support for SSH. There are a number of good commercial solutions but these cost
big money (between $75-$100) and are not likely to be cost effective (let alone
necessary) for most members of our community.

Unison
------

Unison is an excellent 2-way file synchronization tool. It supports all platforms.
