Created first version of helm chart for web2 proj
to install run:

git clone https://github.com/andriylew/DevOps.git
mv DevOps/Containers/Helm/web2proj .
helm install web2proj-chart web2proj/ --values web2proj/values.yaml



Improvements
- create statefulset for mariadb or use existing bitnami helm chart for this
- add ingress to this architecture
- add monitoring as prometheus operator
- add security (vault) implementation
