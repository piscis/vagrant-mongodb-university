mongodb-dba-course
==================

This image provides a basebox installation for mongodb university in particular:

* M102: MongoDB for DBAs
* M101JS: MongoDB for Node.js Developers

It will setup MongoDB and NodeJS together with the corresponding drivers necessary to work with MongoDB.

### Setup

* Download and install virtualbox from [https://www.virtualbox.org/](https://www.virtualbox.org/) https://www.virtualbox.org/
* Download and install vagrant from [http://www.vagrantup.com/](http://www.vagrantup.com/) http://www.vagrantup.com/
* Vagrant plugins `vagrant plugin install vagrant-omnibus`
* Install chef/knife `gem install chef bundler knife-solo knife-solo_data_bag librarian librarian-chef`
* Before starting vagrant cd into chef dir. and type `librarian-chef update`. This should install all necessary cookbook dependencies
* To start the vm type `vagrant up`

### Start working

* Access the VM by entering `vagrant ssh`
* NodeJS and MongoDB are prepared and ready to rock :-)