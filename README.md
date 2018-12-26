# laravel-docker
Simple docker setup to use with php apps including Laravel

## How to use
1.  Clone the `laravel-docker` in to your project directory.
2.  cd in to `laravel-docker` and run `docker-compose up -d`. 

## MySQL credentials 
Check the `docker-compose.yml` file for the credentials. The defaults are as follows.  
```
MYSQL_ROOT_PASSWORD: root
MYSQL_DATABASE: homestead
MYSQL_USER: homestead
MYSQL_PASSWORD: secret
MYSQL_HOST: mysql
```

## How to login to your workspace
Do the command `docker-compose exec app bash` to login to the workspace. Or run any command agains the `app` service, for example:  
`docker-compose exec app ls -l` --> should list all your project files.

## Login to MySQL database
Run the following command to login to the database.  
`docker-compose exec app mysql -u root -p`  
and when prompted enter your root password (default is `root`).

## Access localhost
Open your web browser and visit localhost: `http://localhost:8080`
