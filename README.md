# httpForwarder

Maps (forwards/proxies) a http request/response to a single domain and port to any other url. Handy for K8s Operator development with local debugging (outside of miniKube)!

## Build image

```bash
export REPO=your-username
make push
```

## Deploy

```bash
kubectl apply -f deploy/forwarder.yaml
```