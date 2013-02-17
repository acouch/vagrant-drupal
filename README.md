This is a wrapper around puppet repos for setting up a LAMP stack.

Instructions
============

1) Install vagrant and git and virtual box.

2) Clone this repository.

3) Grab the submodules ("git submodule update --init").

4) Note that there is a nuams module that you might not have access to. It only adds nuams specific functionality. If you don't you need to comment out the 'nuams' class in manifests/default.pp or you will see errors.

4) Type "vagrant up" to start your new virtual server.

5) Type "vagrant ssh" to log into your new virtual server.
