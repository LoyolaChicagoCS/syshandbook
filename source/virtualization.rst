
`Department Services <../index.html>`_ >

Virtualization
~~~~~~~~~~~~~~

We are now able to host Xen and Windows Hyper-V virtual servers in the
department. We can host these with a dedicated public IP address
(justification is required to obtain one) or private IP addresses which
would be visible when you connect via the Loyola VPN.
Given our present resource limitations, we can only provide virtual
machines on a limited basis, primarily for faculty and student
research/outreach projects. Please send your requests to the vm alias
(see `Getting Help <../../how-to/getting-help/index.html>`_) and make
sure you include the following information:

-  **name**: your full name
-  **university e-mail address**: we will not give virtual machines to
   anyone who is not part of the Loyola community, although we will
   allow same to be used by outsiders, provided there is a Loyola
   contact.
-  **alternate e-mail address**: where we can find you in case you
   decide not to read your Loyola e-mail (or you're not getting your
   messages!)
-  **duration**: amount of time in months for your project, or permanent
   (in general, permanent machines will be given only with highly sound
   justification.
-  **RAM**: required RAM in 256MB increments; large allocations are
   rarely given. We'll prioritize requests that are smaller than 512MB.
-  **disk space**: required storage in 10GB increments
-  **desired OS**: We recommend Ubuntu server edition but can support
   many others. At present, we do not support any OS that requires a
   license key or activation (except Windows on our new Hyper-V racks).
-  **desired hostname**: may be requested in one cs, math, etl, cslabs
   (a private zone), all of which are subdomains of luc.edu. For
   example, if you want the hostname gkt in the domain etl.luc.edu, you
   would ask for gkt.etl.luc.edu
-  **public or private static IP**: You must say public or private. We
   will generally be asking you (especially if you're a student) to
   start with a private IP address. This in most cases will require you
   to choose the domain cslabs.luc.edu, which only resolves within
   Loyola proper.
-  **type of virtual machine**: Xen, VMware, Hyper-V program. You would
   only need VMware if you want to host a Windows VM but we presently
   have no plans to support Windows, per our emphasis on freely
   available OS technology without activation requirements.
-  **number of CPUs**: we are only able to support 1 for most requests
   at this time.

Updated on Apr 11, 2010 by `George
Thiruvathukal <mailto:gkt@cs.luc.edu>`_ (Version 4)

