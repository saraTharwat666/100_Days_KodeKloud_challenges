# create yaml file 
vi redis-deployment.yaml
# its content
# 1. ConfigMap
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-redis-config
data:
  redis.conf: |
    maxmemory 2mb
---
# 2. Redis Deployment
apiVersion: apps/v1
kind: Deployment
metadata:
  name: redis-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: redis-app
  template:
    metadata:
      labels:
        app: redis-app
    spec:
      containers:
        - name: redis-container
          image: redis:alpine
          ports:
            - containerPort: 6379
          resources:
            requests:
              cpu: "1"
          volumeMounts:
            - name: data
              mountPath: /redis-master-data
            - name: redis-config
              mountPath: /redis-master
              # لتطبيق إعدادات الـ redis من ConfigMap
              subPath: redis.conf
          command: ["redis-server", "/redis-master/redis.conf"]
      volumes:
        - name: data
          emptyDir: {}
        - name: redis-config
          configMap:
            name: my-redis-config
# apply 
kubectl apply -f redis-deployment.yaml

