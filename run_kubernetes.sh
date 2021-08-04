#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="jonrexmorris/predict"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-predict --image=$dockerpath
kubectl expose deployment udacity-predict --type=NodePort --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward service/udacity-predict 8000:80
