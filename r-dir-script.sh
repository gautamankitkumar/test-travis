#!/bin/bash


# Taken from https://stackoverflow.com/a/3856879
cd project
cd src

py_files = (' find ./ -maxdepth 1 -name "*.py" ')

r_files =('find ./ -maxdepth 1 -name "*.r" ')

cd ..

if [ ${#py_files[@]} -gt 0 ]; then 
	echo "Python project"
	python -m pytest

elif [ ${#r_files[@]} -gt 0 ]; then
	sudo apt install r-base

	# https://stackoverflow.com/a/20924082
	apt-get -y build-dep libcurl4-gnutls-dev
	apt-get -y install libcurl4-gnutls-dev
	Rscript -e 'install.packages(c("devtools","testthat"))'
	Rscript -e 'library(testthat); test_dir("test/")'
fi