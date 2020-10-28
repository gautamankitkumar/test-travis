[![Build Status](https://travis-ci.com/gautamankitkumar/test-travis.svg?branch=combined-py-r)](https://travis-ci.org/gautamankitkumar/test-travis)


# test-travis
## About
This repo is made to facilitate automatic checks of functions made in python or R through TravisCI.

It uses the folder directory as follows
## Folder Directory
```
\---r-dir-script.sh
\---project
    |   DESCRIPTION
    |
    +---src
    |       DESCRIPTION
    |       my_code.r
    |
    \---test
            DESCRIPTION
            test_cube.r
```

First, `r-dir-script.sh` checks whether `.r` or `.py` extension files exists in `/project/src/` directory. Based on that result specific language checks are undertaken.

Python checks are performed using pytest.

R checks are carried out by using `test_dir('/test')` function in `testthat` library.

## Areas of improvement
- Functionality for manual package installation.
- Faster R installation in TravisCI

