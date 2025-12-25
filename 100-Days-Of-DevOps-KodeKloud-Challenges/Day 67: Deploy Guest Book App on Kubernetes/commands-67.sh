
# create yaml file 
vi guestbook-app.yaml
# its content 
# =========================
# 1. Redis Master Deployment
# =========================
apiVersion: apps/v1
kind: Deployment
metadata:
  name: redis-master
spec:
  replicas: 1
  selector:
    matchLabels:
      tier: backend
      role: master
  template:
    metadata:
      labels:
        tier: backend
        role: master
    spec:
      containers:
        - name: master-redis-devops
          image: redis
          resources:
            requests:
              cpu: 100m
              memory: 100Mi
          ports:
            - containerPort: 6379
---
# Redis Master Service
apiVersion: v1
kind: Service
metadata:
  name: redis-master
spec:
  selector:
    tier: backend
    role: master
  ports:
    - port: 6379
      targetPort: 6379
---
# =========================
# 2. Redis Slave Deployment
# =========================
apiVersion: apps/v1
kind: Deployment
metadata:
  name: redis-slave
spec:
  replicas: 2
  selector:
    matchLabels:
      tier: backend
      role: slave
  template:
    metadata:
      labels:
        tier: backend
        role: slave
    spec:
      containers:
        - name: slave-redis-devops
          image: gcr.io/google_samples/gb-redisslave:v3
          resources:
            requests:
              cpu: 100m
              memory: 100Mi
          env:
            - name: GET_HOSTS_FROM
              value: dns
          ports:
            - containerPort: 6379
---
# Redis Slave Service
apiVersion: v1
kind: Service
metadata:
  name: redis-slave
spec:
  selector:
    tier: backend
    role: slave
  ports:
    - port: 6379
      targetPort: 6379
---
# =========================
# 3. Frontend Deployment
# =========================
apiVersion: apps/v1
kind: Deployment
metadata:
  name: frontend
spec:
  replicas: 3
  selector:
    matchLabels:
      tier: frontend
  template:
    metadata:
      labels:
        tier: frontend
    spec:
      containers:
        - name: php-redis-devops
          image: gcr.io/google-samples/gb-frontend@sha256:a908df8486ff66f2c4daa0d3d8a2fa09846a1fc8efd65649c0109695c7c5cbff
          resources:
            requests:
              cpu: 100m
              memory: 100Mi
          env:
            - name: GET_HOSTS_FROM
              value: dns
          ports:
            - containerPort: 80
---
# Frontend Service
apiVersion: v1
kind: Service
metadata:
  name: frontend
spec:
  type: NodePort
  selector:
    tier: frontend
  ports:
    - port: 80
      targetPort: 80
      nodePort: 30009
# apply it 
kubectl apply -f guestbook-app.yaml
