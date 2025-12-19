# create yaml file to craete pod 
vi volume-share-nautilus.yaml

apiVersion: v1
kind: Pod
metadata:
  name: volume-share-nautilus
spec:
  containers:
  - name: volume-container-nautilus-1
    image: ubuntu:latest
    command: ["sleep", "3600"]
    volumeMounts:
    - name: volume-share
      mountPath: /tmp/news
  - name: volume-container-nautilus-2
    image: ubuntu:latest
    command: ["sleep", "3600"]
    volumeMounts:
    - name: volume-share
      mountPath: /tmp/apps
  volumes:
  - name: volume-share
    emptyDir: {}
# :wq ==> to save it

# To apply this file 
kubectl apply -f volume-share-nautilus.yaml

# Create a File in the First Container
kubectl exec -it volume-share-nautilus -c volume-container-nautilus-1 -- bash -c "echo 'This is a shared file' > /tmp/news/news.txt"
# Verify the File in the Second Container
kubectl exec -it volume-share-nautilus -c volume-container-nautilus-2 -- ls /tmp/apps
kubectl exec -it volume-share-nautilus -c volume-container-nautilus-2 -- cat /tmp/apps/news.txt
