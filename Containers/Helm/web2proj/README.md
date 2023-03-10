v2.

to install run:

git clone https://github.com/andriylew/DevOps.git
mv DevOps/Containers/Helm/web2proj .
helm install web2proj-chart web2proj/ --values web2proj/values.yaml

to deploy db with service monitor and metric exporter run:

helm repo add bitnamy https://charts.bitnami.com/bitnami
helm isntall mariadb2 bitnamy/mariadb --values mariadbvalues.yaml

to deploy prometheus run:
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack

for ingress check https://learn.microsoft.com/en-us/azure/aks/ingress-tls?tabs=azure-cli 
for now only tried ip ingress

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install ingress-nginx ingress-nginx/ingress-nginx \
  --set controller.service.annotations."service\.beta\.kubernetes\.io/azure-load-balancer-health-probe-request-path"=/healthz


Improvements
- create statefulset for mariadb or use existing bitnami helm chart for this
- add ingress to this architecture
- add monitoring as prometheus operator
- add security (vault) implementation
