#!/bin/bash
ns=gr-queen-perf

#### Postgresql ####

kubectl delete job k6-performance-test  -n $ns

# Uninstall helm releases my-postgresql and data
helm uninstall my-postgresql -n $ns
kubectl delete pvc data-my-postgresql-postgresql-0 -n $ns

sleep 10

# Install helm release
helm install my-postgresql ../apps/postgresql -f ../apps/postgresql/values.yaml -n $ns

sleep 60

# Delete pods api
kubectl delete pods -l app=sabiane-data-api -n $ns
kubectl delete pods -l app=queen-api-postgres -n $ns