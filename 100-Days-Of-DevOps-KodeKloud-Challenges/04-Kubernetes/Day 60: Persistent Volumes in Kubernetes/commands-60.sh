# Create PersistentVolume (pv-devops)
vi pv-devops.yaml

# the content 
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-devops
spec:
  storageClassName: manual
  capacity:
    storage: 4Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: /mnt/itadmin

    ################################################################################
    # create pvc-devops.yaml
    vi pvc-devops.yaml
    # its content
    
     apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pvc-devops
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi

    ################################################################################

  # Create Pod and Mount the PVC
  vi pod-devops.yaml
  # its content
  apiVersion: v1
kind: Pod
metadata:
  name: pod-devops
spec:
  containers:
    - name: container-devops
      image: httpd:latest
      ports:
        - containerPort: 80
      volumeMounts:
        - name: web-storage
          mountPath: /usr/local/apache2/htdocs
  volumes:
    - name: web-storage
      persistentVolumeClaim:
        claimName: pvc-devops

  # create web-devops-service.yaml
  vi web-devops-service.yaml
  # its content 
  apiVersion: v1
kind: Service
metadata:
  name: web-devops
spec:
  type: NodePort
  selector:
    app: web-devops
  ports:
    - port: 80
      targetPort: 80
      nodePort: 30008

  #  add label 
  kubectl label pod pod-devops app=web-devops
# apply all yaml files 




































  

