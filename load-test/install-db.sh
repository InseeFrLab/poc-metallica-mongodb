#!/bin/bash
ns=gr-queen-perf
helm install --dependency-update my-mongodb ../apps/mongodb -f ../apps/mongodb/values.yaml -n $ns
#helm install --dependency-update my-postgresql ../apps/postgresql -f ../apps/postgresql/values.yaml -n $ns
