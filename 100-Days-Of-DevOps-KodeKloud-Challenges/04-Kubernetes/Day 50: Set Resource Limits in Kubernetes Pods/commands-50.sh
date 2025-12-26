# create yaml file 
vi httpd-pod.yml 

# content of yaml file:
apiVersion: v1
kind: Pod
metadata:
  name: httpd-pod
spec:
  containers:
  - name: httpd-container
    image: httpd:latest
    resources:
      requests:
        memory: "15Mi"
        cpu: "100m"
      limits:
        memory: "20Mi"
        cpu: "100m"

# to apply this :
kubectl apply -f httpd-pod.yml
