[![Build Status](https://travis-ci.com/gautamankitkumar/test-travis.svg?branch=combined-py-r)](https://travis-ci.org/gautamankitkumar/test-travis)

# About The Project
This project aims to auto-check the code/functions written in your directory for two languages, python and R using TravisCI continuos integration.

## Project Directory Structure
Users are expected to follow the following directory structure

```
\---project
    +---src
    \---test
```

For R projects, the directory will look something like this:
```
\---project
    |   DESCRIPTION
    |
    +---src
    |       some_code.r
    |
    \---test
            test_code.r
```

## Working

To get only one `job` within TravisCI, the project is identified for its language by using the files in present in `/project/src` directory.

First, `install-script.sh` checks whether `.r` or `.py` extension files exists in `/project/src/` directory. Based on the check, language specific packages are installed.

Second, `test-script.sh` again checks for the language. Python checks are carried out using 
```
python -m pytest
```
more documentation on pytest can be found [here](https://docs.pytest.org/en/stable/)

R checks are carried out by using 
```
test_dir('/test')
``` 
function in `testthat` library.

## Areas of improvement
- Option to manually include package
- Plagiarism checker