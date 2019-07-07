#!/bin/bash
kubectl create ns tester
kubectl apply -f nginx-app.yaml
