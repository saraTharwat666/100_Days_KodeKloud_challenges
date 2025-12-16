# initiate a rollback to the previous revision.
kubectl rollout undo deployment/nginx-deployment

# to verify rollback is done:
kubectl rollout status deployment/nginx-deployment  #deployment "nginx-deployment" successfully rolled out
