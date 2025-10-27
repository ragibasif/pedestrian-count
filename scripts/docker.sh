#!/bin/bash

set -Ceuvx

# Build and run the Docker image
docker build -t pedestrian_count .
docker run -it --rm --name pedestrian-count pedestrian_count
