## Install via Helm

```shell
helm dependencies update
helm install my-mongodb . -f values.yml -n $ns
```