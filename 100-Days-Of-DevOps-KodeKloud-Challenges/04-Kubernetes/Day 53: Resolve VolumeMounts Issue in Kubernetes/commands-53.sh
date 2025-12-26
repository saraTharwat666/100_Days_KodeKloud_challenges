# Step 1: Check the Pod Status
kubectl get pods

# Step 2: Verify the Document Root
kubectl exec -it nginx-phpfpm -c nginx-container -- ls -la /usr/share/nginx/html

# Step 3: Copy the index.php File to the Pod
kubectl cp /home/thor/index.php nginx-phpfpm:/usr/share/nginx/html/index.php -c nginx-container

# Step 4: Verify the Website
kubectl get pods
