#  to know container name [kubectl get deployment nginx-deployment -o yaml]
# Execute a rolling update for this application [deployment/nginx-deployment] ==> [nginx=nginx:1.19]
kubectl set image deployment/nginx-deployment nginx-container=nginx:1.19

# verify the changes : 
kubectl rollout status deployment/nginx-deployment
kubectl get pods -o wide


