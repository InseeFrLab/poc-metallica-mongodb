#!/bin/bash
ns=gr-queen-perf

kubectl delete -f ../apps/sabiane-data-api/. -n $ns
kubectl delete -f ../apps/queen-api-postgre/. -n $ns
kubectl delete -f ../apps/queen-api-mongo/. -n $ns

helm uninstall my-mongodb -n $ns
kubectl delete pvc datadir-my-mongodb-0 -n $ns
kubectl delete pvc datadir-my-mongodb-1 -n $ns
kubectl delete pvc datadir-my-mongodb-2 -n $ns

kubectl delete job k6-performance-test  -n $ns
helm uninstall my-postgresql -n $ns
kubectl delete pvc data-my-postgresql-postgresql-0 -n $ns
helm uninstall my-mongo-express -n $ns
helm uninstall my-influxdb -n $ns
helm uninstall my-prometheus -n $ns
helm uninstall my-grafana -n $ns
kubectl delete -f ../apps/sabiane-data-api/. -n $ns
kubectl delete -f ../apps/queen-api-postgre/. -n $ns
kubectl delete -f ../apps/queen-api-mongo/. -n $ns