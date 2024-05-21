#!/bin/bash

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# This line will echo the admin password for logging into the ArgoCD UI:
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

# This line will port forward the ArgoCD UI to your localhost:7070 so you can login into the ArgoCD UI at http://localhost:7070/
kubectl port-forward -n argocd service/argocd-server 7070:80 --address='0.0.0.0' &
