GPGPU Server
============

#. After you log in the server, please run the following command to install the SDK in your home directory::

   $ cp_gpusdk

   This will result in a folder being created in ~/NVIDIA_GPU_Computing_SDK,

#. Compiling the examples::

   $ cd ~/NVIDIA_GPU_Computing_SDK/C
   $ make

#. Run the ``deviceQuery`` demo to see the GPGPU device(s).

   .. literalinclude:: devicequery.txt

#. See http://developer.download.nvidia.com/compute/cuda/3_2/docs/Getting_Started_Linux.pdf
   for additional details.
