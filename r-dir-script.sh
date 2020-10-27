#!/bin/bash


# Taken from https://stackoverflow.com/a/3856879
cd project
cd src

count=`ls -1 *.py 2>/dev/null | wc -l`

count2=`ls -1 *.r 2>/dev/null | wc -l`


cd ..

if [ $count != 0 ]; then 
	echo "Python project"
	python -m pytest

elif [ $count1 !=0 ]; then
	sudo apt install r-base
	# https://stackoverflow.com/a/20924082
	apt-get -y build-dep libcurl4-gnutls-dev
	apt-get -y install libcurl4-gnutls-dev
	Rscript -e 'install.packages(c("devtools","testthat"))'
	Rscript -e 'library(testthat); test_dir("test/")'
fi