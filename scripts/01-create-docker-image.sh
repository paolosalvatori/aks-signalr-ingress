#!/bin/bash

# For more information, see: https://github.com/paolosalvatori/aks-signalr-ingress

# Variables
source ./00-variables.sh

# Build the docker image
docker build -t $imageName:$tag -f Dockerfile .