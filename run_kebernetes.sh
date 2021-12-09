#!/usr/bin/env bash


## Complete the following steps to get kubernetes pods running locally


# This is your Docker ID/path
dockerpath=maweeks/NanoUdacity


# Run the Docker Hub container with kubernetes
kubectl run nano-devops-05\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=NanoUdacity


# List kubernetes pods
kubectl get pod


# Forward the container port to a host
kubectl port-forward NanoUdacity 8000:80
