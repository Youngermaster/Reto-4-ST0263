# Make sure to change the password to the one you set in the docker-compose.yml file
docker exec -it mysql_server mysql -uwordpressuser -ppassword -Dwordpress
