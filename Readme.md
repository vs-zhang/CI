# generate ssh key pair
$ bash ssh_key.sh 

# jenkins-data

$  docker run -it --name jenkins-data vszhang/jenkins-data

# jenkins-master

$ docker run -it -p 8080:8080 --volumes-from jenkins-data --name myjenkins vszhang/jenkins-master

# jenkins-slave

$ docker run -it -p  --name myjenkins-slave vszhang/jenkins-slave
