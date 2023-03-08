for now connection to external thru kubectl port-forward svc/php-service 8000 --address='0.0.0.0'
to connect to db in hostname put endpoint from kubectl describe svc db-service
example:
Name:              db-service
Namespace:         default
....
Port:              db-service-port  9906/TCP
TargetPort:        db-svc-port/TCP
Endpoints:         10.244.1.2:3306
....
here it wil be 10.244.1.2:3306