#!/bin/bash

install() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/HaliteChallenge/Halite/master/environment/install.sh)"
    # make dir if it doesn't exist
    mkdir -p bin
    mv halite bin/
}

cleanup() {
    rm -rf build dist *egg-info
}

install
python setup.py install
cleanup
