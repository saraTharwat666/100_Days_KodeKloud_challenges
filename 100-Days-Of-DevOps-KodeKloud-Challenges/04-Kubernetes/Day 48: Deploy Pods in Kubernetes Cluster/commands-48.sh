# create a yaml file 
vi pod-httpd.yml


# content of yaml file : 
apiVersion: v1
kind: Pod
metadata:
  name: pod-httpd
  labels:
    app: httpd_app
spec:
  containers:
    - name: httpd-container
      image: httpd:latest

# To apply the file 
kubectl apply -f pod-httpd.yml

# To verify :
kubectl get pods
