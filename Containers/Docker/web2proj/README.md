# web2proj
here we have simple php app with mysql db in docker with docker-compose

## install and deploy

Clone git repo with web2project app

```bash
git clone https://github.com/web2project/web2project.git 
```
Move to php/web 

```bash
mv web2project/* web
```
Build and deploy
```bash
docker-compose up -d --build
```

## Improvements

- add security to passwords in docker-compose 
- wrap this images in helm and deploy to kubernetes
