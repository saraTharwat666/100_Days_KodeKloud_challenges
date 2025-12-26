 # Edit the Redis Deployment
 kubectl edit deployment redis-deployment
 
# edit this file by checking it and correct the mistake:
# - configMap:
#           defaultMode: 420
#           name: redis-cofig   ==> config instead cofig
#         name: config

# and 
  # containers:
  #     - image: redis:alpin  ===> alpine instead alpin
  #       imagePullPolicy: IfNotPresent

  
kubectl get deployments -o wide 


