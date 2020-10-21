# All studies related to Travis

## Core concepts on CI [Travis](https://docs.travis-ci.com/user/for-beginners)

> Continuous Integration is the practice of merging in small code changes frequently - rather than merging in a large change at the end of a development cycle. The goal is to build healthier software by developing and testing in smaller increments. This is where Travis CI comes in.

Basically, TravisCI will help automate testing code changes and give feedback.

## Build, Stages, Jobs and Phases [Link](https://docs.travis-ci.com/user/for-beginners#builds-stages-jobs-and-phases)


Quick implementation found at: https://www.smartfile.com/blog/testing-python-with-travis-ci/ 

# `pytests`
https://docs.pytest.org/en/stable/getting-started.html#getstarted

> pytest will run all files of the form test_*.py or *_test.py in the current directory and its subdirectories


In the situation of tests file and main source files having same name, it is strongly suggested to use a src layout where application root package resides in a sub-directory of your root:


    setup.py
    src/
        mypkg/
            __init__.py
            app.py
            view.py
    tests/
        __init__.py
        foo/
            __init__.py
            test_view.py
        bar/
            __init__.py
            test_view.py

[Intro to Pytest](https://github.com/pluralsight/intro-to-pytest)

Installing Python and R together: https://stackoverflow.com/questions/44317627/installing-both-python-and-r-for-a-travis-build

Conditional builds information: https://docs.travis-ci.com/user/conditional-builds-stages-jobs