#!/bin/bash

echo "Cleaning up Docker..."

docker container prune -f
docker image prune -f

echo "Done!"
