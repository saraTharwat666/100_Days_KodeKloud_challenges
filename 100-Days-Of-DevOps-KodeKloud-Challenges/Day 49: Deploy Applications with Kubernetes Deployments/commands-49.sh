# create yaml file 
vi nginx-deployment.yml 


# content of file 
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        ports:
        - containerPort: 80
# to apply file 
kubectl apply -f nginx-deployment.yml
# to verify : 
kubectl get pods

