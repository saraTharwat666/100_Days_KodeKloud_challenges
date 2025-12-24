# create yaml file 
vi print-envars-greeting.yaml
# its content
apiVersion: v1
kind: Pod
metadata:
  name: print-envars-greeting
spec:
  restartPolicy: Never
  containers:
  - name: print-env-container
    image: bash
    command:
      - /bin/sh
      - -c
      - 'echo "$(GREETING) $(COMPANY) $(GROUP)"'
    env:
    - name: GREETING
      value: "Welcome to"
    - name: COMPANY
      value: "Stratos"
    - name: GROUP
      value: "Industries"
# apply the yaml file
kubectl apply -f print-envars-greeting.yaml
# for testing
kubectl logs -f print-envars-greeting  # Welcome to Stratos Industries
