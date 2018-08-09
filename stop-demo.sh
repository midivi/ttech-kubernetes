#!/bin/bash

kubectl delete -R -f kubernetes/maria
kubectl delete -R -f kubernetes/gijs
kubectl delete -R -f kubernetes/rob
kubectl delete -R -f kubernetes/martijn
kubectl delete -f kubernetes/namespaces.yaml
