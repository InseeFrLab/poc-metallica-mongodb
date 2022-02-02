#!/bin/bash
ns=gr-queen-perf
kubectl apply -f ../apps/sabiane-data-api/. -n $ns
kubectl apply -f ../apps/queen-api-mongo/. -n $ns
#kubectl apply -f ../apps/queen-api-postgre/. -n $ns