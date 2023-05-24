#!/bin/bash

# Variables
source ./00-variables.sh

# Attach ACR to AKS cluster
if [[ $attachAcr == true ]]; then
  echo "Attaching ACR $acrName to AKS cluster $aksClusterName..."
  az aks update \
    --name $aksClusterName \
    --resource-group $resourceGroupName \
    --attach-acr $acrName
fi

# Check if namespace exists in the cluster
result=$(kubectl get namespace -o jsonpath="{.items[?(@.metadata.name=='$namespace')].metadata.name}")

if [[ -n $result ]]; then
  echo "$namespace namespace already exists in the cluster"
else
  echo "$namespace namespace does not exist in the cluster"
  echo "creating $namespace namespace in the cluster..."
  kubectl create namespace $namespace
fi

# Create deployment
cat $deploymentTemplate |
    yq "(.spec.template.spec.containers[0].image)|="\""$image"\" |
    kubectl apply -n $namespace -f -

# Create ClusterIP service
kubectl apply -f $clusterIpServiceTemplate -n $namespace

# Create LoadBalancer service
kubectl apply -f $loadBalancerServiceTemplate -n $namespace