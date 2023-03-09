Created first version of helm chart for web2 proj
to install run:

git clone https://github.com/andriylew/DevOps.git
mv DevOps/Containers/Helm/web2proj .
helm install web2proj-chart web2proj/ --values web2proj/values.yaml