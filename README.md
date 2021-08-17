# ranger-docker

## Creating and pushing the ranger-docker image

1. Copy the ranger-<version>-admin.tar to dist folder.
2. Copy the JDBC driver to dist folder.
3. Copy env.template to .env and complete the variables with blank content
4. Build image
		docker compose -f docker-compose.ranger.yml up --build
 
5. Push it
		docker-compose -f docker-compose.ranger.yml  push


