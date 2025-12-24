# create yaml file 
 vi nginx-deployment.yaml
 # The Content of yaml file 
 apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx-container
        image: nginx:latest
        ports:
        - containerPort: 80
# save it :wq

# create service yaml file
vi nginx-service.yaml
# content of service file 
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  type: NodePort
  selector:
    app: nginx
  ports:
  - port: 80
    targetPort: 80
    nodePort: 30011
    # save it :wq


    # to apply files 
      kubectl apply -f nginx-deployment.yaml
      kubectl apply -f nginx-service.yaml














    
