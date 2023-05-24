#!/bin/bash

# For more information, see: https://github.com/paolosalvatori/aks-signalr-ingress

# Variables
source ./00-variables.sh

# Run the docker container
docker run -it \
  --rm \
  -e ASPNETCORE_URLS="http://*:80;http://*:5000" \
  -P \
  -p 80:80 \
  -p 5000:5000  \
  --name $containerName \
  $imageName:$tag