for now connection to external thru kubectl port-forward svc/php-service 8000 --address='0.0.0.0'
to connect to db in hostname put endpoint from db-service for this run 
kubectl get ep
example:
NAME          ENDPOINTS         AGE
db-service    10.244.2.2:3306   3m10s

here it wil be 10.244.2.2:3306