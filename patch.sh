#!/bin/bash

ethtool -K eth0 sg off

set -e

echo "==> Launching the Docker daemon..."
dind dockerd --storage-driver=overlay $DOCKER_EXTRA_OPTS &

while(! docker info > /dev/null 2>&1); do
    echo "==> Waiting for the Docker daemon to come online..."
    sleep 1
done
echo "==> Docker Daemon is up and running!"

/bin/sh -c "$@"