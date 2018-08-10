#!/bin/bash

kubectl delete -R -f kubernetes/maria -n maria-space
kubectl delete -R -f kubernetes/gijs -n gijs-space
kubectl delete -R -f kubernetes/rob -n rob-space
kubectl delete -R -f kubernetes/martijn -n martijn-space
kubectl delete -R -f kubernetes/jim -n jim-space
kubectl delete -f kubernetes/namespaces.yaml
