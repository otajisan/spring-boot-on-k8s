#!/bin/bash

kubectl apply -f k8s/namespace.yml
kubectl apply -f k8s/ingressgateway.yml
kubectl apply -f k8s/virtualservice.yml
kubectl apply -f k8s/destination-rule.yml
kubectl apply -f k8s/opa-istio-config.yml
kubectl apply -f k8s/deployment.yml
