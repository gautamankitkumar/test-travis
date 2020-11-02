#!/bin/bash

# As per https://github.com/travis-ci/travis-ci/issues/5775
# User must give different `install` and `script` files
# Thus, making a new install script.

# Taken from https://stackoverflow.com/a/3856879
cd project
cd src

count=`ls -1 *.py 2>/dev/null | wc -l`


cd ..
cd ..

if [ "$count" != 0 ]; then 
# If  python project found	
	sudo apt-get -y install python3-pip
	pip3 install -U pip
	pip3 install -U pytest

else
	# Else declare it as R project and install packages

	# https://stackoverflow.com/a/20924082
	Rscript -e "install.packages(c('devtools','testthat'))"
fi