#!/bin/bash

if [[ -z $1 ]]; then
    echo 'ERROR: No target file given.'
    exit 1
fi

#Substitute all environment variables defined in the file given as argument
envsubst '\$GITHUB_NAME \$GITHUB_URI \$GITHUB_AVATAR \$GITHUB_USERNAME' < $1 > $1

# Execute all other paramters
exec "${@:2}"