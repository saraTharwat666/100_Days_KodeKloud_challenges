# create yaml file to create pod
vi webserver-pod.yaml

apiVersion: v1
kind: Pod
metadata:
  name: webserver
spec:
  volumes:
  - name: shared-logs
    emptyDir: {}
  containers:
  - name: nginx-container
    image: nginx:latest
    volumeMounts:
    - name: shared-logs
      mountPath: /var/log/nginx
  - name: sidecar-container
    image: ubuntu:latest
    command: ["sh","-c","while true; do cat /var/log/nginx/access.log /var/log/nginx/error.log; sleep 30; done"]
    volumeMounts:
    - name: shared-logs
      mountPath: /var/log/nginx
# apply yaml file
kubectl apply -f webserver-pod.yaml

# Verify Logs Sharing
kubectl exec -it webserver -c sidecar-container -- ls /var/log/nginx
kubectl exec -it webserver -c sidecar-container -- cat /var/log/nginx/access.log
kubectl exec -it webserver -c sidecar-container -- cat /var/log/nginx/error.log


