# create  ic-deploy-xfusion.yaml 
vi ic-deploy-xfusion.yaml 
# its content 
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ic-deploy-xfusion
spec:
  replicas: 1
  selector:
    matchLabels:
      app: ic-xfusion
  template:
    metadata:
      labels:
        app: ic-xfusion
    spec:
      volumes:
        - name: ic-volume-xfusion
          emptyDir: {}

      initContainers:
        - name: ic-msg-xfusion
          image: ubuntu:latest
          command:
            - /bin/bash
            - -c
            - echo Init Done - Welcome to xFusionCorp Industries > /ic/official
          volumeMounts:
            - name: ic-volume-xfusion
              mountPath: /ic

      containers:
        - name: ic-main-xfusion
          image: ubuntu:latest
          command:
            - /bin/bash
            - -c
            - while true; do cat /ic/official; sleep 5; done
          volumeMounts:
            - name: ic-volume-xfusion
              mountPath: /ic

# save it by====>>  :wq

# apply it 
kubectl apply -f ic-deploy-xfusion.yaml

# to verify it 
kubectl get deployments.apps

kubectl logs -f c-deploy-xfusion




















              

