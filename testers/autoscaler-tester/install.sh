#!/bin/bash
kubectl create ns tester
kubectl apply -f cpu-intensive-app.yaml
