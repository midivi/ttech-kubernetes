#!/bin/bash

kubectl apply -f kubernetes/namespaces.yaml

# Start all incgresses and services
kubectl apply -f kubernetes/gijs/ingress-service.yaml -n gijs-space
kubectl apply -f kubernetes/maria/ingress-service.yaml -n  maria-space
kubectl apply -f kubernetes/martijn/ingress-service.yaml -n martijn-space
kubectl apply -f kubernetes/rob/ingress-service.yaml  -n rob-space
kubectl apply -f kubernetes/jim/ingress-service.yaml  -n jim-space

# 'Demo Dashboard'
watch -n 0.2 -d 'kubectl get all --all-namespaces -l ttech-app -L ttech-app  -o wide'

