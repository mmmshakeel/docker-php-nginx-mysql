# laravel-docker
Simple docker setup to use with php apps including Laravel

## How to use
1.  Clone the `laravel-docker` in to your project directory.
2.  cd in to `laravel-docker` and run `docker-compose up -d`. 

### Already have a PHP project:
In most cases you will have a PHP project already. In that case add this as a submodule.  
`git submodule add https://github.com/mmmshakeel/laravel-docker.git`

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

## Not Laravel?
If you intend to use this for a not laravel setup, make sure to add your app's public files inside the folder `public`. Because the nginx document root has been set to the following location.  
`/var/www/public`  

So your directory structure should be as follows:  
```
project-root
  |- laravel-docker
  |  |- README.md
  |  |- app.dockerfile
  |  |- docker-compose.yml
  |  |- vhost.conf
  |  |- web.dockerfile
  |- public
  |  |- index.php
```

In case if you need to change the document root of the web server (nginx), open the `vhost.conf` file and do the relevant change in the line number #4.

## Access localhost
Open your web browser and visit localhost: `http://localhost:8080`
