SSH
===

Not all computer systems in the department are intended for general use, and
some are restricted to faculty and staff usage. (And many are reserved for
testing purposes.) The systems available for general use include
random.cs.luc.edu and infinity.cs.luc.edu.
 
By default, SSH traffic (on port 22) is blocked outside of Loyola. You will
need to use the VPN or the public key authentication to connect to our servers
on an alternate port (22222).

For most of our user community, we think the VPN is a reasonable solution. If
you don't have access, please let us know. We can get VPN access for alumni and
collaborators.

Configuring SSH in General
--------------------------

To use public key authentication (PKA), you need to make a configuration after
you install a ssh client, which includes three steps: 

#. generate a private and public key pair (Key Type: RSA  Key Length: 1024);
#. store private key in your local computer;
#. save public key on the remote Linux server.
 
In the remaining sections, we discuss different configurations that are
commonly needed by faculty, staff, and students within our department.

Bitvise Tunnelier
-----------------

Two Quick Steps to Configure SSH Keys Authentication With bitvise SSH client

#. Download ssh client software from http://www.bitvise.com/download-area

#. Generate a private and public key pair:


   - click the link titled 'User keypair manager' in the Login tab. 
   - click the button [Generate New ...]
   - choose ssh-rsa and 1024bits
   - you can enter passphrase or leave it empty
   - click the button [Generate]



       This passphrase is not sent to the remote host, and it
       is only used to protect your private key. Otherwise, 
       anyone who has access to your private key can 
       authenticate to your account automatically.

#. Export Public key to the Linux server *User keypair manager*. 

   - click the keypair in the slots
   - click the button [Export..]
   - chose "Export public key" and "OpenSSH format"
   - click the button [Export]
   - It should be something like::

        ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEAo8q0r4d599buYHCbc36ViJniRuLvUr++asdSUh

   - You need to append that line to ``~/.ssh/authorized_keys`` on the Linux server.

OpenSSH on Linux, Mac OS X, or Cygwin
-------------------------------------

#. Generate a private and public key pair

   .. literalinclude:: openssh-keygen.txt

#. Save Public key on the Linux server

   .. literalinclude:: openssh-savekey.txt

   You need to append that line to ~/.ssh/authorized_keys on the Linux server

3. connect to the Linux server::

   $ ssh -p port-num  xyz@server.cs.luc.edu

   where xyz is your username on our Linux system. The port-num and server name have been sent to your Loyola
   mailbox with your username and password.

PuTTY
-----

Five Quick Steps to Configure SSH Keys Authentication With PuTTY

#. Download ssh client software:

   - Get the zip file with all PuTTY binaries 
     http://the.earth.li/~sgtatham/putty/latest/x86/putty.zip

#. Generate a private and public key pair

   - Double click PuTTYgen.exe, press [Generate] button, 
     keep moving mouse.
     Once the keys are generated, enter a passphrase for 
     your private key, or leave the boxes empty if you do 
     not want to protect your private key with a passphrase.

   - This passphrase is not sent to the remote host, and it
     is only used to protect your private key. Otherwise, 
     anyone who has access to your private key can 
     authenticate to your account automatically.

   - Click [Save Private key] button to save it in a file, say, ``C:\ppp.ppk``

#. Save Public key on the Linux server

   - cut/paste your public ssh key (Please see the figure in the web page mentioned in the beginning)
     on ONE LINE (That is very important!!!) in a file,

   - Do not add the rsa-key-20090614 at the end. Make sure, there is ssh-rsa at the beginning.

   - It should be something like::

        ssh-rsa ... 3434343234232m/PmcZJc5uVleXfp6yJIWG5xJE9TpY1VC4n/NQlWs1PTcplk5+xhUJPHjeMkKcVMIhhUGg0l+Tt08

   - You need to append that line to ~/.ssh/authorized_keys on the Linux server.


#. Store Private key in PuTTY SSH authentication agent

   - Start the PuTTY SSH authentication agent PAGEANT.EXE (double click the icon).

   - After it started, right-click its syspanel icon (in the right-bottom corner of your screen)and 
     select "add key". Select your private key file, say C:\ppp.ppk, and type in your passphrase. 
     The Pageant works as a passphrase keeper.

#. Use PuTTY to connect to the Linux server

   - Under "Host name or (IP address)" enter hostname
   - Under "Port", enter port number
   - The port number and hostname have been sent to your Loyola mailbox.
   - Then, click [Open]

This is adapted from http://www.howtoforge.com/how-to-configure-ssh-keys-authentication-with-putty-and-linux-server-in-5-quick-steps


SSH Communications
------------------

Five Quick Steps to Configure SSH Keys Authentication With ssh Client from SSH Communications

#. Download ssh client software from::

   - http://www.colorado.edu/its/docs/authenticate/printouts/win_ssh.html
   - http://www.sfsu.edu/~helpdesk/ssh/ssh329/

#. Generate a private and public key pair

   - In the toolbar of ssh client, there are several icons. First from left is "Save", and second is "Print". 
     The third from RIGHT, is "Settings".

   - Click "Setting" icon.

   - In the "Setting" windows, go to "Global Settings"->"User Authentication"->"Keys". 

   - Click "Keys".

   - Under "Key pair management", click "Generate New", then click Next.


   - In the "Key Generation" window that appears:

   - From the drop-down list next to "Key Type:", select RSA

   - From the the drop-down list next to "Key Length:", select 1024.

   - Click Next. The key generation process will start. When it's complete, click Next again.

#. Store private key

   - In the "File Name:" field, enter a name for the file 
     where SSH Secure Shell will store your private key. 
     Your public key will be stored in a file with the 
     same name, plus a .pub extension.

   - In the boxes next to "Passphrase:", enter a passphrase 
     for your private key, or leave the boxes empty if you 
     do not want to protect your private key with a 
     passphrase.

   - This passphrase is not sent to the remote host, and 
     it is only used to protect your private key. 
     Otherwise, anyone who has access to your private key 
     can authenticate to your account automatically.

   - click Next, and then Finish.

#. Save Public key on the Linux server


   - Under "Public Key management", click "View". 
     Notepad or another editor will open xxx.pub
     You may save it in a file. Then, you need to append 
     that file to ~/.ssh/authorized_keys on the Linux 
     server. 

   - You may need to add ssh-rsa at the beginning of the 
     key and edit it to make the key on one line, ex.::

         ---- BEGIN SSH2 PUBLIC KEY ----
	 Comment: "[2048-bit rsa, cs@luc-cs-101, Thu Jul 29 2010 01:16:06]"
	 ssh-rsa AAAAB3NzaC1yc25A4vaINWk8i8vRAYOWoPacCP8KU3NUqWExy2a6lUq75F3pYmg46cjZ8gj9aEVcGgAwGgo4XP4TBB
	 ---- END SSH2 PUBLIC KEY ----

#. Use ssh client to connect to the Linux server

   - "Host Name:" to hostname
   - "Port Number:" to port number
   - "Authentication Method:" to Public Key.
 
   - The port number and hostname have been sent to your Loyola mailbox with your username and password.

   - You will be prompted for the passphrase for your 
     private key (if you supplied one). If you did not 
     supply a passphrasefor your private key, you will 
     not receive a request for a passphrase when 
     connecting to the remote host.

#. See http://kb.iu.edu/data/amzx.html for additional details. We have adapted our instructions from this page.


Cygwin SSH Installation
-----------------------

#. go to http://www.cygwin.com/setup.exe

   - This will download a GUI installer called setup.exe which can be run to download a complete cygwin installation
     via the internet.

#. Download Source

   - Please choose [Install from Internet] option, setup.exe creates a local directory to store the packages before
     actually installing the contents.  The Root Directory for Cygwin (default C:\cygwin) will become / within your
     Cygwin installation.

#. Choosing Packages

   - Activate the window [Select Packages]

   - enter ssh in [search] box

   - click [+] Net ...
   - click []Skip     openssh ...n
 
   - then click [Next] ....

 
#. After installing Cygwin/openssh, you can configure OpenSSH for Public Key Authentication 
