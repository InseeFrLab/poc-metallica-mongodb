## Install via Helm

```shell
helm dependencies update
helm install my-postgresql . -f values.yml -n $ns
```