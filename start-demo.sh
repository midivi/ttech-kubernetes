#!/bin/bash

kubectl apply -f kubernetes/namespaces.yaml

# Start all incgresses and services
kubectl apply -f kubernetes/gijs/ingress-service.yaml -n gijs-space
kubectl apply -f kubernetes/maria/ingress-service.yaml -n  maria-space
kubectl apply -f kubernetes/martijn/ingress-service.yaml -n martijn-space
kubectl apply -f kubernetes/rob/ingress-service.yaml  -n rob-space

watch -n 0.2 -d 'kubectl get po --all-namespaces -l ttech-app -L ttech-app  -o wide'
