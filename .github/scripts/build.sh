#!/bin/bash
USER=$1

docker build -t $USER/python-alpine:latest .

VERSION=$(docker run $USER/python-alpine:latest python --version | awk '{print $2}')
LATEST=$(docker pull $USER/python-alpine -a | cut -d: -f1 | head -1 | tail -1)

if [[ $VERSION == $LATEST ]]; then
    echo "Old version and latest version are the same"
    echo $VERSION > "$HOME/latest.version"
else
    docker tag $USER/python-alpine:latest $USER/python-alpine:$VERSION
fi
