#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=onecaas/udapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run machlearnapi \
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=machlearnapi  

# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host
kubectl port-forward machlearnapi 8000:80

