if [-z "$(ls -A r-dir)"]; then
	cd python-project
	pytest
else
	sudo apt -y install r-base
fi