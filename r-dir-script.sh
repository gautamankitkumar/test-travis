#!/bin/bash


# Taken from https://stackoverflow.com/a/3856879
cd project
cd src

count=`ls -1 *.py 2>/dev/null | wc -l`
cd ..
if [ $count != 0 ]; then 
echo "Python project"
python -m pytest
else
	echo "R project"
fi