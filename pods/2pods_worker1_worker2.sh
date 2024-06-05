#!/bin/bash

ssh k8s-master
sleep 5
kubectl apply -f examples/pod1-worker1.yml
kubectl apply -f examples/pod2-worker2.yml
kubectl get pods -o wide
