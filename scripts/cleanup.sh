#!/bin/bash

echo " Cleaning up Kubernetes resources..."

NAMESPACE="default"  # change to your actual namespace if needed

# Delete in recommended order (from dependent to independent)
kubectl delete -f HPA.yml --ignore-not-found -n $NAMESPACE

kubectl delete -f backend-svc.yml --ignore-not-found -n $NAMESPACE
kubectl delete -f frontend-svc.yml --ignore-not-found -n $NAMESPACE
kubectl delete -f mongodb-svc.yml --ignore-not-found -n $NAMESPACE

kubectl delete -f backend-deployment.yml --ignore-not-found -n $NAMESPACE
kubectl delete -f frontend-deployment.yml --ignore-not-found -n $NAMESPACE
kubectl delete -f mongodb-deployment.yml --ignore-not-found -n $NAMESPACE

kubectl delete -f mongodb-pvc.yml --ignore-not-found -n $NAMESPACE
kubectl delete -f mongodb-pv.yml --ignore-not-found -n $NAMESPACE

kubectl delete -f secrets.yml --ignore-not-found -n $NAMESPACE

echo "✅ Cleanup complete."

