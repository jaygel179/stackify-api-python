#!/bin/bash

set -e

function runFlake8() {
    echo '<--------------------------------------------->'
    # run flake8 and exit on error
    # it will check the code base against coding style (PEP8) and programming errors
    echo "Running flake8..."
    flake8 || { echo 'You have increased the number of flake8 errors'; exit 1; }
}

function runPyTest() {
    echo '<--------------------------------------------->'
    echo "Python Version $(python --version)"
    echo 'Running pytest...'
    py.test
}

runFlake8

runPyTest
