#!/bin/sh

if ! which antibody &> /dev/null
then
    curl -s https://raw.githubusercontent.com/getantibody/installer/master/install | bash -s
fi
