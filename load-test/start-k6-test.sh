#!/bin/bash
export VUS="250"
export PROTOCOL="http"
export HOSTNAME="queen-api-postgres:8080"
ns=gr-queen-perf

# Uri to k6 script file
export K6_FILE_URI=''

kubectl delete job k6-performance-test  -n $ns

cat k6/job.yaml | envsubst | kubectl apply -f -  -n $ns