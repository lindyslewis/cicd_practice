#!/bin/bash

install_dependencies(){
	curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable -v 0.18.30
  yum install git -y
}

#install_dependencies

chef-client -z -c solo.rb -j node.json 
