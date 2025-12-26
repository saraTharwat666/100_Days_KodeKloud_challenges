# create the secret 
kubectl create secret generic news --from-file=/opt/news.txt
# to verify 
kubectl get secrets

# to create pod , create yml file called secret-xfusion.yaml
vi secret-xfusion.yaml
# its content 
apiVersion: v1
kind: Pod
metadata:
  name: secret-xfusion
spec:
  containers:
    - name: secret-container-xfusion
      image: debian:latest
      command:
        - sleep
        - "3600"
      volumeMounts:
        - name: secret-volume
          mountPath: /opt/demo
          readOnly: true

  volumes:
    - name: secret-volume
      secret:
        secretName: news


# apply the file
kubectl apply -f secret-xfusion.yaml 

# Verify the Secret Inside the Container
kubectl exec -it secret-xfusion -c secret-container-xfusion -- bash
ls /opt/demo
cat /opt/demo/news.txt
