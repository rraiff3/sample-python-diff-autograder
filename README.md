# sample-python-diff-autograder

This is a sample autograder for a Python assignment similar to the C++ assignment described [here](https://github.com/ucsb-gradescope-tools/sample-cpp-assignment).

# Platform specific notes

## Windows

Editing bash scripts (e.g. `diffs.sh`) on Windows will convert the line endings to Windows style, causing the script to be unusable by the Docker container. Either edit the files in a Unix/Mac environment or use a tool to de-convert the line endings BEFORE uploading your autograder.zip.**

# Components

## EXECUTION-FILES

Any extra files (e.g. data files) that should be in the same directory as the student submission while the submission is being executed. In this repo, the EXECUTION-FILES directory has `input.txt` file from the provided-files directory in the [assignment repo](https://github.com/ucsb-gradescope-tools/sample-cpp-assignment).


## REFERENCE-SOLUTION

A reference solution which will be used to generate the expected outcome for all tests. Like student solutions, this solution will be run with all files from EXECUTION-FILES in the same directory.

## MAKE-REFERENCE<i></i>.sh

A bash script that creates the expected test output using the reference solution. **Leave this unchanged when creating your own autograder.**

## apt-get<i></i>.sh
A bash script for installing any necessary dependencies for the assignment.

## requirements<i></i>.txt
A list (newline-separated) of any Python packages that need to be installed.

## requirements3<i></i>.txt
A list (newline-separated) of any **Python 3** packages that need to be installed.

## diffs<i></i>.sh

A bash script describing the tests to be run. See [this page](https://github.com/ucsb-gradescope-tools/gs-diff-based-testing/blob/master/README.md) for further documentation.

## grade<i></i>.sh

A bash script for generating the results of the student submission. At the top of this file, you must specify the expected student submisson files. This assignment expects files countToN.py, helloFile.py, helloWorld.py, helloStderr.py, readFile.py, and readStdin.py. Thus, grade.sh begins with:

> EXPECTED_FILES="countToN.py helloFile.py helloWorld.py helloStderr.py readFile.py readStdin.py "