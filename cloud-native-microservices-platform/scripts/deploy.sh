#!/bin/bash

# Path to the directory containing your environment-specific manifests
ENVIRONMENT=$1
MANIFEST_PATH="cloud-native-microservices-platform/infra/kubernetes/${ENVIRONMENT}"

if [[ -z "$ENVIRONMENT" ]]; then
  echo "Usage: ./deploy.sh [environment]"
  echo "Example: ./deploy.sh dev"
  exit 1
fi

if [ ! -d "$MANIFEST_PATH" ]; then
  echo "The specified environment does not exist."
  exit 1
fi

# Apply Kubernetes manifests
kubectl apply -f $MANIFEST_PATH

echo "Deployment initiated for the $ENVIRONMENT environment."
