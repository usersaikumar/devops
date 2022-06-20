## Kubernetes

## yaml file

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: 2 # tells deployment to run 2 pods matching the template
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
```
```
 kubectl apply -f https://k8s.io/examples/application/deployment.yaml
```

To install Kubernetes

- install in every Node(iclude master) --- https://github.com/usersaikumar/devops/blob/main/kubernetes/kubernetes.sh
- install in master node only --- https://github.com/usersaikumar/devops/blob/main/kubernetes/kubernetes-master.sh