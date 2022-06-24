## Kubernetes

## Kubernetes Commands
execute file

```
kubectl apply –f <filename>
kubectl cluster-info
```
attaching container
```
kubectl attach <pod> –c <container
kubectl attach 123456-7890 -c tomcat-conatiner
```
auto scale
```
kubectl autoscale deployment foo --min = 2 --max = 10
```
copy
```
kubectl cp <Files from source> <Files to Destinatiion>
```
create
```
kubectl create –f <File Name>
components:
deployment
namespace
quota
secret docker-registry
secret
secret generic
secret tls
serviceaccount
service clusterip
service loadbalancer
service nodeport
```
delete
```
kubectl delete –f ([-f FILENAME] | TYPE [(NAME | -l label | --all)])
```
describe
```
kubectl describe pod tomcat
```
REPLACE
```
kubectl replace -f FILENAME
```
LOGS
```
kubectl logs –p –c tomcat.8
```
GET
```
kubectl get [(-o|--output=)json|yaml|wide|custom-columns=...|custom-columnsfile=...|
```
ROLLOUT
```
kubectl rollout undo deployment/tomcat
COMPONENTS:
rollout history
rollout pause
rollout resume
rollout status
rollout undo
```

## yaml file

https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/

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
#### to display
```
kubectl describe deployment nginx-deployment
```


To install Kubernetes

- install in every Node(iclude master) --- https://github.com/usersaikumar/devops/blob/main/kubernetes/kubernetes.sh
- install in master node only --- https://github.com/usersaikumar/devops/blob/main/kubernetes/kubernetes-master.sh
