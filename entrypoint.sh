#!/bin/bash
set -eo pipefail




if [ -z "$CONTAINER_NAME" ]; then
  export CONTAINER_NAME='docker_in_docker_swarm'
fi


exec docker run -i --rm --name "$CONTAINER_NAME" "$CONTAINER_IMAGE"

