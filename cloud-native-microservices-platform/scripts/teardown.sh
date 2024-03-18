#!/bin/bash

# Path to the directory containing your environment-specific manifests
ENVIRONMENT=$1
MANIFEST_PATH="cloud-native-microservices-platform/infra/kubernetes/${ENVIRONMENT}"

if [[ -z "$ENVIRONMENT" ]]; then
  echo "Usage: ./teardown.sh [environment]"
  echo "Example: ./teardown.sh dev"
  exit 1
fi

if [ ! -d "$MANIFEST_PATH" ]; then
  echo "The specified environment does not exist."
  exit 1
fi

# Delete Kubernetes manifests
kubectl delete -f $MANIFEST_PATH

echo "Resources for the $ENVIRONMENT environment have been torn down."
