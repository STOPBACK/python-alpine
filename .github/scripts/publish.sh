#!/bin/bash
USER=$1
if [[ -f "$HOME/latest.version" ]]; then
    rm "$HOME/latest.version"
    echo "Package is already on latest version"
else
    docker push -a $USER/python-alpine
fi