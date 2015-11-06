# jenkins-key
$ docker run -it --name jenkins-key vszhang/jenkins-key

# jenkins-data

$  docker run -it --name jenkins-data vszhang/jenkins-data

# jenkins-master

$ docker run -it -p 8080:8080 --volumes-from jenkins-key --volumes-from jenkins-data --name jenkins-master vszhang/jenkins-master

# jenkins-slave

$ docker run -it -p  --name jenkins-slave vszhang/jenkins-slave
