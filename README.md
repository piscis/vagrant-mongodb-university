mongodb-dba-course
==================

Some of my stuff for mongodb university courses:

* M102: MongoDB for DBAs
* M101JS: MongoDB for Node.js Developers

### Setup

* Download and install virtualbox from [https://www.virtualbox.org/](https://www.virtualbox.org/) https://www.virtualbox.org/
* Download and install vagrant from [http://www.vagrantup.com/](http://www.vagrantup.com/) http://www.vagrantup.com/
* Vagrant plugins `vagrant plugin install vagrant-omnibus`
* Install chef/knife `gem install chef bundler knife-solo knife-solo_data_bag librarian librarian-chef`
* Before starting vagrant cd into chef dir. and type `librarian-chef update`. This should install all necessary cookbook dependencies
* To start the vm type `vagrant up`