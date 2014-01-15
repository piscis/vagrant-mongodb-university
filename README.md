mongodb-dba-course
==================

This repository provides a "basic vagrant" installation for mongodb university,e in particular:

* M102: MongoDB for DBAs
* M101JS: MongoDB for Node.js Developers

It will setup MongoDB and NodeJS together with the corresponding drivers necessary to work with MongoDB.

## Getting started

### Setup

* Make sure you have a decend ruby version installed e.g. `ruby 1.9.3p484`
* Download and install Virtualbox from [https://www.virtualbox.org/](https://www.virtualbox.org/) https://www.virtualbox.org/
* Download and install vagrant from [http://www.vagrantup.com/](http://www.vagrantup.com/) http://www.vagrantup.com/

### Start the VM

From the base directory of this repository run `vagrant up`. This will download a pre-packaged VagrantVM. Please note during the
initialisation phase of vagrant you will be asked to pick a network adapter.

When the VM is running execute `vagrant ssh` to SSH into the box.

## Build your own VM

### Setup

* Make sure you have a decend ruby version installed e.g. `ruby 1.9.3p484`
* Download and install Virtualbox from [https://www.virtualbox.org/](https://www.virtualbox.org/) https://www.virtualbox.org/
* Download and install vagrant from [http://www.vagrantup.com/](http://www.vagrantup.com/) http://www.vagrantup.com/
* Vagrant plugins `vagrant plugin install vagrant-omnibus`
* Install chef/knife `gem install chef bundler knife-solo knife-solo_data_bag librarian librarian-chef`
* Before starting vagrant cd into chef dir. and type `librarian-chef update`. This should install all necessary cookbook dependencies
* To start the vm type `vagrant up`

### Start working

* Access the VM by entering `vagrant ssh`
* NodeJS and MongoDB are prepared and ready to rock :-)

### Manually Chef run
You can start a manually chef run by executing the following commands:

1. Make sure the vagrant vm is running
2. Open a terminal and cd into the chef directory with `cd chef`
3. Execute knife solo with the vagrant node file by entering: ` knife solo cook vagrant@192.168.33.22 nodes/vagrant.json --identity-file ../../.vagrant.d/insecure_private_key`
4. Enjoy the chef run :-)

### Tested
Tested on Mac Os X Mavericks (10.9) / Vagrant (1.3.5) / Virtualbox (4.2.18 r88780) / Ruby 1.9.3p484

### MIT License (MIT)
