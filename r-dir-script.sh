#!/bin/bash
if [-z "$(ls -a r-project)"]; then
	cd python-project
	pytest
else
	sudo apt -y install r-base
fi