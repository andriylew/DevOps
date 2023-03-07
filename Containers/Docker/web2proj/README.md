here we have simple php app with mysql db in docker with docker-compose
to deploy this app run:

git clone https://github.com/web2project/web2project.git
mv web2project/* web
to deploy now use docker-compose up -d --build



improve:
-add security to passwords in docker-compose
-wrap this images in helm and deploy to kubernetes
